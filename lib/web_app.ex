defmodule WebApp do
  use HttpServer, root: "public"
  
  get ["favicon.ico"] do
    { :error, 404 }
  end
  
  get ["test", id] do
    html = """
    <p>Test. ID: #{id}</p>
    """
    
    { :ok, html }
  end
  
  all do
    html = """
    <h1>Hello World!</h1>
    <pre>#{inspect request}</pre>
    """
    
    { :ok, html }
  end
end