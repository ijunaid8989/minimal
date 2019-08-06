# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :minimal,
  namespace: EvercamMinimal

# Configures the endpoint
config :minimal, EvercamMinimalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zw+crUTtEJg5L0xw1B+jYPMbdffI55NA8xBKwjJMI5kJO12LOWTKl9Bii4EoVmqv",
  render_errors: [view: EvercamMinimalWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EvercamMinimal.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
