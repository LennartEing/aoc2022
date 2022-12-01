defmodule AoC.MixProject do
  use Mix.Project

  def project do
    [
      app: :aoc,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      applications: [:httpoison]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"}
    ]
  end
end
