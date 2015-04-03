defmodule SecretShit.RoomChannel do
  use Phoenix.Channel

  def join(socket, "secret", message) do
    broadcast socket, "join", %{content: "Anon joined the party !"}
    {:ok, socket}
  end
  #
  # def event(socket, "message:emit", message) do
  #   # broadcast socket, "message:lol", %{content: message[:text]}
  #   socket
  # end

end
