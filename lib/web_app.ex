defmodule WebApp do
  use HttpServer, root: "public"
  
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