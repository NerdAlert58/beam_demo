import Config

config :example_system, ExampleSystemWeb.Endpoint,
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  http: [transport_options: [num_acceptors: 5]],
  watchers: [],
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{lib/example_system_web/.*\.(eex|heex|ex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"
