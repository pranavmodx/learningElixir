defmodule FirstProject.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      FirstProject.Repo,
      # Start the Telemetry supervisor
      FirstProjectWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: FirstProject.PubSub},
      # Start the Endpoint (http/https)
      FirstProjectWeb.Endpoint
      # Start a worker by calling: FirstProject.Worker.start_link(arg)
      # {FirstProject.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FirstProject.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FirstProjectWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
