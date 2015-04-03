use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :secret_shit, SecretShit.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :secret_shit, SecretShit.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "secret_shit_test",
  size: 1,
  max_overflow: false
