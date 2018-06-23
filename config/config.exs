# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :im2model_api,
  ecto_repos: [Im2modelApi.Repo]

# Configures the endpoint
config :im2model_api, Im2modelApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5xx55zQgARArPgpN+kRtU0/67p90UIVewZuqP7ucpa402i+vc9gaW5yv50qP/M10",
  render_errors: [view: Im2modelApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Im2modelApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
