defmodule LiveplaceWeb.PageController do
  use LiveplaceWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home)
  end

  def game(conn, _params) do
    render(conn, :dashboard)
  end
end
