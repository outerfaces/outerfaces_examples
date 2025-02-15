defmodule HelloStars.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      HelloStarsWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:hello_stars, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: HelloStars.PubSub},
      # Start a worker by calling: HelloStars.Worker.start_link(arg)
      # {HelloStars.Worker, arg},
      # Start to serve requests, typically the last entry
      HelloStarsWeb.Endpoint,
      Outerfaces.Endpoints.DefaultInitializer.supervisor(
        :hello_stars,
        HelloStarsWeb,
        [
          "hello_moon",
          "hello_stars"
        ],
        []
      )
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloStars.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HelloStarsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
