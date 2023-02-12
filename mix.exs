defmodule Panoramix.MixProject do
  use Mix.Project

  def project do
    [
      app: :panoramix,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Panoramix, []}
    ]
  end

  defp deps do
    [
      {:alchemy, "~> 0.7.0", hex: :discord_alchemy},
      {:floki, "~> 0.20.0"}
    ]
  end
end
