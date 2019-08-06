defmodule EvercamMinimalWeb.Router do
  use EvercamMinimalWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EvercamMinimalWeb do
    pipe_through :api

    get "/test", TestController, :test
    get "/testing", TestController, :testing
  end
end
