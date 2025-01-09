defmodule LiveplaceWeb.GameController do
  use LiveplaceWeb, :controller

  plug LiveplaceWeb.CustomPlugs.OogaBoogaHeaders

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"gameid" => gameid}) do
    render(conn, :show, gameid: gameid)
  end

  def redirect_to_game(conn, _params) do
    conn
    |> put_flash(:error, "Forbidden game")
    |> redirect(to: ~p"/game")
  end

end
