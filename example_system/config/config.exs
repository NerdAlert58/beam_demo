# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
import Config

# Configures the endpoint
config :example_system, ExampleSystemWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CRulGglCO2Nnoo8X/DgocGTgzDvMlAZ750QCd2hfe7mIUv/jRw2MCST3fonN2c2P",
  render_errors: [view: ExampleSystemWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: ExampleSystemWeb.PubSub,
  live_view: [signing_salt: "66Jp7PO+NlJCA1sf6mB/5WrEdicRPQmu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
