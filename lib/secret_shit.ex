defmodule SecretShit do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(SecretShit.Endpoint, []),
      worker(SecretShit.Repo, []),
    ]

    opts = [strategy: :one_for_one, name: SecretShit.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    SecretShit.Endpoint.config_change(changed, removed)
    :ok
  end
end
