defmodule PlugHeartbeat.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @github_url "https://github.com/whatyouhide/plug_heartbeat"
  @description """
  A plug for responding to heartbeat requests.
  """

  def project do
    [app: :plug_heartbeat,
     version: @version,
     elixir: "~> 1.0",
     deps: deps,
     description: @description,
     source_url: @github_url,
     package: package]
  end

  def application do
    [applications: [:logger, :cowboy, :plug]]
  end

  defp deps do
    [{:cowboy, "~> 1.0.0"},
     {:plug, "~> 0.10.0"},
     {:earmark, "~> 0.1", only: :docs},
     {:ex_doc, "~> 0.7", only: :docs}]
  end

  defp package do
    [contributos: ["Andrea Leopardi"],
     licenses: ["MIT"],
     links: %{"GitHub" => @github_url}]
  end
end