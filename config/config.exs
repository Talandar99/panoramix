import Config

config :panoramix, token: System.get_env("BOT_TOKEN")

config :porcelain, driver: Porcelain.Driver.Basic
