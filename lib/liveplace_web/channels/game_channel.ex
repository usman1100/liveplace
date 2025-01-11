defmodule LiveplaceWeb.GameChannel do
  use LiveplaceWeb, :channel

  @impl true
  def join("game:common", _payload, socket) do
    {:ok, socket}
  end

  @impl true
 def handle_in("message", %{"body" => body}, socket) do
   broadcast!(socket, "message", %{"body" => body})
   {:noreply, socket}
 end

end
