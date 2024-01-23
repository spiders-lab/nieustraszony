defmodule NieustraszonyWeb.PageControllerTest do
  use NieustraszonyWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Nieustraszony"
  end

  test "GET /elixir", %{conn: conn} do
    conn = get(conn, "/elixir")
    assert html_response(conn, 200) =~ "Nieustraszony"
  end

  test "GET /hacking", %{conn: conn} do
    conn = get(conn, "/hacking")
    assert html_response(conn, 200) =~ "Hacking"
  end

  test "GET /postgresql", %{conn: conn} do
    conn = get(conn, "/postgresql")
    assert html_response(conn, 200) =~ "PostgreSQL"
  end
end
