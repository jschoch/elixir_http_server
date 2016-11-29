defmodule WebApp do
  #use HttpServer, root: "public"
  
  def get ["favicon.ico"] do
    { :error, 404 }
  end
  
  def get ["test", id] do
    html = """
    <p>Test. ID: #{id}</p>
    """
    
    { :ok, html }
  end
  
  def all do
    html = """
    <h1>Hello World!</h1>
    <dl>
    </dl>
    """
    
    { :ok, html }
  end
end
