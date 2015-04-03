use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :secret_shit, SecretShit.Endpoint,
  secret_key_base: "ObxxlfC9AVPFQ5jee2HWpo8TFqd1wd7+PvXTmdA6aiB02o/3J8E8DzRtQgQJ7HOE"

# Configure your database
config :secret_shit, SecretShit.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "secret_shit_prod"
