defmodule LiveplaceWeb.GameHTML do
  use LiveplaceWeb, :html

  def game_chip(assigns) do
    ~H"""
    <div class={[
      "mt-1 h-fit w-fit px-2 py-1 rounded-lg",
      @gameid == "123" && "bg-red-500 text-white",
      @gameid != "123" && "bg-gray-200 text-gray-800"
    ]}>
      {@gameid}
    </div>
    """
  end

  embed_templates "game_html/*"
end
