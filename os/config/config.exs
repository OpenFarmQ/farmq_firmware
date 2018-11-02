# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :farmq_os,
  namespace: FarmQ.OS,
  ecto_repos: [FarmQ.OS.Repo]

# Configures the endpoint
config :farmq_os, FarmQ.OSWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+4vjJN68SPnrxHzMLusBdcqPKO8wicsvibAbE2kZIWXir+jSS+HERvR0KPJVgNNs",
  render_errors: [view: FarmQ.OSWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FarmQ.OS.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
