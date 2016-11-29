defmodule HttpServer do
  @moduledoc """
  A very basic HTTP server using erlang's gen_tcp. Include this
  module and define route functions to respond to requests.
  """
  
  alias :gen_tcp, as: TCP
  
  
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
    #request = get_request_data(socket)
    #IO.puts "#{atom_to_binary(request.method)} #{request.uri}" 
    IO.puts "hr"
    #data = caller.route(request.method, request.path, request)
    #response = case data do
      #{ :ok, html } -> generate_response html
      #{ :ok, data, type } -> generate_response data, type
      #e -> generate_error e
    #end
    data = "<html><body>Hello World</html></body>"
    response = """
          HTTP/1.1 200 OK
          Host: localhost
          Date: Fri, 31 Dec 1999 23:59:59 GMT
          Content-Type: text/html
          Content-Length: #{byte_size data}

          #{data}
          """

    TCP.send(socket, response)
    TCP.close(socket)
  end
  
end
