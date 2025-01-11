defmodule LiveplaceWeb.UserSocket do
  use Phoenix.Socket
  channel "game:*", LiveplaceWeb.GameChannel

  @impl true
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  @impl true
  def id(_socket), do: nil
end
