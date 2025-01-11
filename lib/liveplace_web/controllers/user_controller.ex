defmodule LiveplaceWeb.UserController do
  use LiveplaceWeb, :controller
  alias Liveplace.{User, Repo}

  def index(conn, _params) do
    users = Repo.all(User)
    render(conn, :index, users: users)
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(User, id) do
      nil ->
        conn
        |> put_flash(:error, "User was not found")
        |> redirect(to: ~p"/users")

      user -> render(conn, :show, user: user)
    end
  end
end
