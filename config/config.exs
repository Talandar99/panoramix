import Config
config :porcelain, driver: Porcelain.Driver.Basic

config :thonk,
  token: System.get_env("TOKEN"),
  prefix: "./"
