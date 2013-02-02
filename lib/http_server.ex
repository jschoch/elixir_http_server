defmodule HttpServer do
  @moduledoc """
  A very basic HTTP server using erlang's gen_tcp. Include this
  module and define route functions to respond to requests.
  """
  
  alias :gen_tcp, as: TCP
  
  defrecord Request, uri: nil,
                     method: nil,
                     path: nil,
                     headers: HashDict.new,
                     params: nil,
                     body: nil
  
  @doc "Start the web server with the default port (8080)."
  def start(caller) do
    start(caller, 8086)
  end
  
  @doc "Start the server with the specified port."
  def start(caller, port) do
    spawn fn ->
      # Start listening on the port
      { :ok, listen_socket } = TCP.listen(port, [{ :active, false },
                                                 { :packet, :http }])
      listen_loop(caller, listen_socket)
    end
  end
  
  @doc "Wait for requests and pass them to the handler"
  def listen_loop(caller, listen_socket) do
    # Wait for the next request
    { :ok, socket } = TCP.accept(listen_socket)
    
    # Spawn the request handler process
    request_handler = spawn fn -> handle_request(caller, socket) end
    
    # Set the socket's owner to the handler process
    TCP.controlling_process(socket, request_handler)
    
    # Get ready for the next request
    listen_loop(caller, listen_socket)
  end
  
  @doc "Get information about the request and send back a response"
  def handle_request(caller, socket) do
    request = get_request_data(socket)
    data = caller.route(request.method, request.path, request)
    response = case data do
      { :ok, html } -> generate_response html
      { :ok, file, :file } -> file
      e -> generate_error e
    end
    TCP.send(socket, response)
    TCP.close(socket)
  end
  
  @doc "Create a `Request` record from the socket's recieved data"
  def get_request_data(socket) do
    get_request_data(socket, Request.new())
  end
  
  def get_request_data(socket, data) do
    # Recieve the data
    case TCP.recv(socket, 0) do
      # Inital request data
      { :ok, { :http_request, method, { :abs_path, uri }, _version }} ->
        # Get uri parts
        uri_elements = URI.parse iolist_to_binary(uri)
        
        # Build up the record
        data = data.uri uri
        data = data.method method
        data = data.path String.split(String.lstrip(uri_elements.path, ?/), "/")
        data = data.params URI.decode_query(uri_elements.query || "")
        
        # Get the rest of the data
        get_request_data(socket, data)
      
      # Header data
      { :ok, { :http_header, _, name, _, value }} ->
        # Make sure header is a consistant format
        key = case name do
          name when is_atom(name) -> atom_to_binary name, :utf8
          name when is_list(name) -> list_to_binary name
        end
        # Add the header to the request record
        data = data.headers Dict.put(data.headers, key, iolist_to_binary(value))
        # Get the rest of the data
        get_request_data(socket, data)
      
      # End of headers
      { :ok, :http_eoh } ->
        case data.method do
          # These methods don't have a request body
          :GET -> data
          :OPTION -> data
          :DELETE -> data
          # Presume others do
          _ ->
            :inet.setopts(socket, [{ :packet, :raw }])
            data.body TCP.recv(socket, 0)
        end
      
      # Something went wrong :/
      _ -> data
    end
  end
  
  def generate_response({ :ok, html }) do
    """
    HTTP/1.1 200 OK
    Host: localhost
    Content-Type: text/html
    Content-Length: #{String.length html}
    
    #{html}
    """
  end
  
  def generate_error({ :error, error_code }) do
    error_type = case error_code do
      400 -> "400 Bad Request"
      404 -> "404 Not Found"
      _ -> "503 Internal Server Error"
    end
    
    """
    HTTP/1.1 #{error_type}
    Host: localhost
    """
  end
  
  defmacro __using__(opts) do
    root_val = Keyword.get(opts, :root, ".")
    
    quote do
      import HttpServer, only: [all: 1, all: 2, get: 2, post: 2]
  
      def start do
        start(8080)
      end
      
      def start(port) do
        HttpServer.start unquote(__CALLER__.module), port
      end
      
      defp static_root, do: unquote(root_val)
      
      def route(:GET, ["public" | path], _request) do
        full_path = Path.join([static_root()] ++ path)
        case File.read(full_path) do
          { :ok, data } ->
            { :ok, data, :file }
          e ->
            IO.inspect e
            { :error, 404 }
        end
      end
    end
  end
  
  defmacro all([do: code]) do
    quote hygiene: false do
      def route(_, _, request) do
        unquote(code)
      end
    end
  end
  
  defmacro all(path, [do: code]) do
    quote hygiene: false do
      def route(_, unquote(path), request) do
        unquote(code)
      end
    end
  end
  
  defmacro get(path, [do: code]) do
    quote hygiene: false do
      def route(:GET, unquote(path), request) do
        unquote(code)
      end
    end
  end
  
  defmacro post(path, [do: code]) do
    quote hygiene: false do
      def route(:POST, unquote(path), request) do
        unquote(code)
      end
    end
  end
end
