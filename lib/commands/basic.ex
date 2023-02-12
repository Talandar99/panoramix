defmodule Panoramix.Commands.Basic do
  use Alchemy.Cogs
  alias Thonk.Utils
  alias Alchemy.{Client, Voice}
  require Logger
  require Alchemy.Embed, as: Embed

  Cogs.def ping do
    old = Time.utc_now()
    {:ok, message} = Cogs.say("Pong!")
    time = Time.diff(Time.utc_now(), old, :millisecond)
    Client.edit_message(message, "Pong! :ping_pong: took **#{time} ms**")
  end
end
