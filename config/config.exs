# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_with_rails_session,
  ecto_repos: [PhoenixWithRailsSession.Repo]

# Configures the endpoint
config :phoenix_with_rails_session, PhoenixWithRailsSession.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T5GAPm8g/yA6PSaK6jouDDKP1wOKGGnqy88spR7P0llTLR1+p+DqtImLzCvkQmm9",
  render_errors: [view: PhoenixWithRailsSession.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixWithRailsSession.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :plug_session_redis, :config,
  name: :redis_sessions,    # Can be anything you want, should be the same as `:table` config below
  pool: [size: 2, max_overflow: 5],
  redis: [host: '127.0.0.1', port: 6379]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
