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
    <dl>
      <dt>URI</dt>
      <dd>#{request.uri}</dd>
      
      <dt>Method</dt>
      <dd>#{request.method}</dd>
      
      <dt>Headers</dt>
      <dd>#{inspect request.headers}</dd>
      
      <dt>Parameters</dt>
      <dd>#{inspect request.params}</dd>
    </dl>
    """
    
    { :ok, html }
  end
end