defmodule PilgrimageRouteOptimizer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PilgrimageRouteOptimizerWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:pilgrimage_route_optimizer, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: PilgrimageRouteOptimizer.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: PilgrimageRouteOptimizer.Finch},
      # Start a worker by calling: PilgrimageRouteOptimizer.Worker.start_link(arg)
      # {PilgrimageRouteOptimizer.Worker, arg},
      # Start to serve requests, typically the last entry
      PilgrimageRouteOptimizerWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PilgrimageRouteOptimizer.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PilgrimageRouteOptimizerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end