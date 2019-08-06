defmodule EvercamMinimalWeb.TestController do
  use EvercamMinimalWeb, :controller

  def test(conn, _params) do
    json(conn, %{message: "Hello I am a test"})
  end

  def testing(conn, _params) do
    json(conn, %{message: "Hello I am a testing"})
  end
end