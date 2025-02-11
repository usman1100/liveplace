defmodule LiveplaceWeb.Router do
  use LiveplaceWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {LiveplaceWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveplaceWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  scope "/game", LiveplaceWeb do
    pipe_through :browser

    get "/", GameController, :index
    get "/45", GameController, :redirect_to_game
    get "/:gameid", GameController, :show
  end

  scope "/users", LiveplaceWeb do
    pipe_through :browser

    get "/", UserController, :index
    get "/:id", UserController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveplaceWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:liveplace, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: LiveplaceWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
