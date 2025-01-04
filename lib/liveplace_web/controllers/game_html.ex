defmodule LiveplaceWeb.GameHTML do
  use LiveplaceWeb, :html

  def index(assigns) do
    ~H"""
    <h1 class="text-6xl">Game Index</h1>
    """
  end

  def show(assigns) do
    ~H"""
    <h1 class="text-6xl">Game Show</h1>
    """
  end
end
