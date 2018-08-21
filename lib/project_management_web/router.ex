defmodule ProjectManagementWeb.Router do
  use ProjectManagementWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  # scope "/", ProjectManagementWeb do
  #   # Use the default browser stack
  #   pipe_through(:browser)

  #   get("/", PageController, :index)

  #   resources("/projects", ProjectController, except: [:new, :edit])
  # end

  # Other scopes may use custom stacks.
  scope "/api", ProjectManagementWeb do
    pipe_through(:api)

    resources("/projects", ProjectController, except: [:new, :edit])
    resources("/documents", DocumentController, except: [:new, :edit])
  end
end
