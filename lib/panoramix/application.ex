defmodule Panoramix.Application do
  use Application
  alias Alchemy.Client

  defp load_modules do
    use Allybot.Commands
  end

  @impl true
  def start(_type, _args) do
    children = []

    Client.start(Application.get_env(:allybot, :token))
    load_modules()

    opts = [strategy: :one_for_one, name: Allybot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
