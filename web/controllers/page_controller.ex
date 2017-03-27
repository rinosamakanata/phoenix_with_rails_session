defmodule PhoenixWithRailsSession.PageController do
  use PhoenixWithRailsSession.Web, :controller

  def index(conn, _params) do
    conn = put_session(conn, :message, "hello rails session!")
    #message = get_session(conn, :message)
    #text conn, message
    render conn, "index.html"
  end
end
