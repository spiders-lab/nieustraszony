defmodule NieustraszonyWeb.PageController do
  use NieustraszonyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
