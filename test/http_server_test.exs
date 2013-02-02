Code.require_file "../test_helper.exs", __FILE__

defmodule HttpServerTest do
  use ExUnit.Case

  test "the truth" do
    assert true
  end
  
  test "all macro works" do
    all do: "Testing"
    assert route(:method, "path", nil) == "Testing"
  end
end
