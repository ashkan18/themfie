defmodule Themfie.PageController do
  use Themfie.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
