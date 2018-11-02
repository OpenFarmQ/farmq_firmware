defmodule FarmQ.OS.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      FarmQ.OS.Repo,
      # Start the endpoint when the application starts
      FarmQ.OSWeb.Endpoint
      # Starts a worker by calling: FarmQ.OS.Worker.start_link(arg)
      # {FarmQ.OS.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FarmQ.OS.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    FarmQ.OSWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
