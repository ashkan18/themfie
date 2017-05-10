defmodule Themfie.MediaController do
  use Themfie.Web, :controller

  def medias(conn, _params) do
    instoken = get_session(conn, :instoken)
    medias = Elixtagram.media_search(%{lat: 40.7283288, lng: -73.9936681, count: 10}, instoken)
    conn
    |> assign(:images, Enum.map(medias, fn(m) -> m.images.standard_resolution.url end))
    |> render("medias.html")
  end
end