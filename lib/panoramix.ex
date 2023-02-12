defmodule Panoramix do
  use Application
  alias Alchemy.{Client, Cogs}

  def start(_type, _args) do
    case Application.get_env(:panoramix, :token) do
      nil ->
        raise "TOKEN env var is not set"

      token ->
        prefix = Application.fetch_env!(:panoramix, :prefix)
        bootstrap(token, prefix)
    end
  end

  defp bootstrap(token, prefix) do
    run = Client.start(token)
    load_modules()
    Cogs.set_prefix(prefix)
    run
  end

  defp load_modules do
    use Panoramix.Events
    use Panoramix.Commands.Basic
  end
end
