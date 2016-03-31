defmodule Tapfinder do
  use HTTPotion.Base

  def process_url(url) do
    "http://phillytapfinder.com" <> url
  end
end