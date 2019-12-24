# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :merry_christmas_2019,
  namespace: MC,
  ecto_repos: [MC.Repo]

# Configures the endpoint
config :merry_christmas_2019, MCWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ltVCt8v6zC3GBisaIHIyKQEPPa+Ii4bFBg62n1TQ8VK3/Zj7Na20QH6pr8ed1I9S",
  render_errors: [view: MCWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MC.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
