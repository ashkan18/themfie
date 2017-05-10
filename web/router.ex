defmodule Themfie.Router do
  use Themfie.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Themfie do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/login", AuthController, :login
    get "/medias", MediaController, :medias
  end

  # Other scopes may use custom stacks.
  # scope "/api", Themfie do
  #   pipe_through :api
  # end
end
