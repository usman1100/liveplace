defmodule LiveplaceWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use LiveplaceWeb, :html

  def test(assigns) do
    ~H"""
    <h1 class="text-6xl">Test</h1>
    """
  end

  embed_templates "page_html/*"
end
