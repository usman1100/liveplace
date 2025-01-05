defmodule LiveplaceWeb.PageController do
  use LiveplaceWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
