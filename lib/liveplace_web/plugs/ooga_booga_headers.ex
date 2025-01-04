defmodule LiveplaceWeb.CustomPlugs.OogaBoogaHeaders do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    IO.puts "Ooga Booga!"
    conn
    |> put_resp_header("X-Ooga-Booga", "Ooga Booga")
  end
end
