defmodule SecretShit.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  channel "chat", App.Chat

  get "/", SecretShit.PageController, :index, as: :pages

end
