# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :themfie,
  ecto_repos: [Themfie.Repo]

# Configures the endpoint
config :themfie, Themfie.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K1WcXMX7W9Sqg7Xqv0OXhd1A3Rx44Z/BHQRXSimWNFustA6YygRL90I4wWSZ2JUK",
  render_errors: [view: Themfie.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Themfie.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :elixtagram,
  instagram_client_id: System.get_env("INSTAGRAM_CLIENT_ID"),
  instagram_client_secret: System.get_env("INSTAGRAM_CLIENT_SECRET"),
  instagram_redirect_uri: "http://localhost:4000/login"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
