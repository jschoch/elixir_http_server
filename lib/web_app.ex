defmodule WebApp do
  use HttpServer
  
  get ["test", id] do
    """
    <p>Test. ID: #{id}</p>
    """
  end
  
  all do
    """
    <h1>Hello World!</h1>
    <pre>#{inspect request}</pre>
    """
  end
end