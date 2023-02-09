defmodule Panoramix.Application do
  use Application
  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Events
    
    Events.on_message(:ping)
    def ping(msg), do: IO.inspect(msg.content)
  
  end

  def start(_type, _args) do
    run = Client.start(System.get_env("BOT_TOKEN"))
    use Commands
    run
  end
end
