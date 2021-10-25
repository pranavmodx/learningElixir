defmodule FirstProjectWeb.HelloController do
  use FirstProjectWeb, :controller

  def world(conn, %{"name" => name}) do
    render(conn, "world.html", name: name)
  end
end
