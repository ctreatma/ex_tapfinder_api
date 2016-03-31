defmodule TapfinderTest do
  use ExUnit.Case
  use HyperMock

  test "it makes a request to phillytapfinder.com" do
    HyperMock.intercept do
      request  = %Request{ method: :get, uri: "http://phillytapfinder.com/test" }
      response = %Response{ body: "The Body" }

      stub_request request, response

      Tapfinder.get "/test"
    end
  end
end