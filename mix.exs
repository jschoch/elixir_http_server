defmodule HttpServer.Mixfile do
  use Mix.Project

  def project do
    [ app: :http_server,
      version: "0.0.1",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger],
    mod: {HttpServer,[node]}]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    []
  end
end
