import Config
config :porcelain, driver: Porcelain.Driver.Basic

config :panoramix,
  token: System.get_env("TOKEN"),
  prefix: "./"
