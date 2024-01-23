defmodule NieustraszonyWeb.PageController do
  use NieustraszonyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def elixir(conn, _params) do
    render(conn, "elixir.html")
  end

  def hacking(conn, _params) do
    render(conn, "hacking.html")
  end
  
  def postgresql(conn, _params) do
    render(conn, "postgresql.html")
  end
end
