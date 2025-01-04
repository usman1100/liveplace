defmodule LiveplaceWeb.GameController do
  use LiveplaceWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"gameid" => gameid}) do
    render(conn, :show, gameid: gameid)
  end

end
