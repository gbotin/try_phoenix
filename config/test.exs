use Mix.Config

config :phoenix, SecretShit.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_secret_shit_key",
  session_secret: "4K6(P2OGU&X6*VB1VE!1YE1X+R!886Y8=YPFV31E=W)L4_(97=@Y%(6GGOH5E165K&C"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


