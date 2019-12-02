defmodule MonacoWeb.PageController do
  use MonacoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
