defmodule Talky.Router do
  use Talky.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Talky do
    pipe_through :api
  end
end
