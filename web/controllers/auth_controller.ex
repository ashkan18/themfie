defmodule Themfie.AuthController do
  use Themfie.Web, :controller

  def login(conn, %{ "code" => code }) do
    Elixtagram.configure
    {:ok, token} = Elixtagram.get_token!(code: code)
    conn
    |> put_session(:instoken, token)
    |> redirect(to: "/medias")
    
  end
end