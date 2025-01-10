defmodule LiveplaceWeb.GameHTML do
  use LiveplaceWeb, :html

  def game_chip(assigns) do
    ~H"""
    <div :if={@gameid == "123"} class="mt-1 h-fit w-fit px-2 py-1 bg-green-400 rounded-lg">{@gameid}</div>
    <div :if={@gameid != "123"} class="mt-1 h-fit w-fit px-2 py-1 bg-red-400 rounded-lg">{@gameid}</div>
    """
  end

  embed_templates "game_html/*"
end
