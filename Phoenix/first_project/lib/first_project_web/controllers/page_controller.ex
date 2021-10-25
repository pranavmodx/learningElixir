defmodule FirstProjectWeb.PageController do
  use FirstProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
