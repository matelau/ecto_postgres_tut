defmodule EctoPostgresTutWeb.Router do
  use EctoPostgresTutWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EctoPostgresTutWeb do
    pipe_through :api
  end
end
