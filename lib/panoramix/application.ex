defmodule Panoramix.Application do
  use Application
  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.def ping do
      Cogs.say("pong!")
    end
  end

  def start(_type, _args) do
    run = Client.start(System.get_env("BOT_TOKEN"))
    Alchemy.Cogs.set_prefix("X")
    use Commands
    run
  end
end
