defmodule SecretShit.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  scope "/", SecretShit do
    pipe_through :browser

    get "/", PageController, :index
  end

  socket "/ws", SecretShit do
    channel "rooms:*", RoomChannel
  end

end
