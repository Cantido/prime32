defmodule Prime32.MixProject do
  use Mix.Project

  def project do
    [
      app: :prime32,
      description: "All prime numbers that fit in 32 bits.",
      package: package(),
      docs: docs(),
      version: "1.0.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Rosa Richter"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/Cantido/prime32"}
    ]
  end

  def docs do
    [
      main: "Prime32",
      source_url: "https://github.com/Cantido/prime32",
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end
end
