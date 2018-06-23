defmodule Im2modelApi.Application do
  use Application

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(Im2modelApi.Repo, []),
      # Start the endpoint when the application starts
      supervisor(Im2modelApiWeb.Endpoint, []),
      # Start your own worker by calling: Im2modelApi.Worker.start_link(arg1, arg2, arg3)
      # worker(Im2modelApi.Worker, [arg1, arg2, arg3]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Im2modelApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Im2modelApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
