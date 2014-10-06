use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, SecretShit.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_secret_shit_key",
  session_secret: "4K6(P2OGU&X6*VB1VE!1YE1X+R!886Y8=YPFV31E=W)L4_(97=@Y%(6GGOH5E165K&C"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

