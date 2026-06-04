import Config

port = if node() == :"node2@127.0.0.1", do: 4001, else: 4000

config :example_system, ExampleSystemWeb.Endpoint,
  http: [port: port]
