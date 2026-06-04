defmodule ExampleSystem.Mixfile do
  use Mix.Project

  def cli do
    [preferred_envs: [release: :prod]]
  end

  def project do
    [
      app: :example_system,
      version: "0.0.1",
      elixir: "~> 1.15",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        system: [
          include_executables_for: [:unix],
          applications: [example_system: :permanent]
        ]
      ],
      aliases: [
        release: ["assets.deploy", "release"],
        "assets.deploy": ["esbuild default --minify", "phx.digest"]
      ]
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {ExampleSystem.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.7.14"},
      {:phoenix_view, "~> 2.0"},
      {:phoenix_html_helpers, "~> 1.0"},
      {:phoenix_pubsub, "~> 2.1"},
      {:phoenix_html, "~> 4.1"},
      {:ecto, "~> 3.12"},
      {:phoenix_ecto, "~> 4.6"},
      {:phoenix_live_reload, "~> 1.5", only: :dev},
      {:phoenix_live_view, "~> 1.0"},
      {:gettext, "~> 0.26"},
      {:plug_cowboy, "~> 2.7"},
      {:plug, "~> 1.16"},
      {:recon, "~> 2.5"},
      {:jason, "~> 1.4"},
      {:swarm, "~> 3.4"},
      {:parent, "~> 0.12"},
      {:esbuild, "~> 0.8", runtime: Mix.env() == :dev},
      {:load_control, path: "../load_control"},
      {:stream_data, "~> 1.1", only: :test},
      {:assertions, "~> 0.20", only: :test}
    ]
  end
end
