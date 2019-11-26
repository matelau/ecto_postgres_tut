# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ecto_postgres_tut,
  ecto_repos: [EctoPostgresTut.Repo]

# Configures the endpoint
config :ecto_postgres_tut, EctoPostgresTutWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sVVy4L5g8CAigrDik4A8nM3yzJbTmVIIwUw4mvYXQvSpfcMuTWDeyF+WAvG8ipWa",
  render_errors: [view: EctoPostgresTutWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EctoPostgresTut.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
