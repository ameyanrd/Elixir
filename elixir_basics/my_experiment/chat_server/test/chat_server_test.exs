defmodule ChatServerTest do
  use ExUnit.Case
  doctest ChatServer

  test "greets the world" do
    assert ChatServer.hello() == :world
  end
  test "accept function" do
    assert ChatServer.accept(4040) == "Accepting connections on port 4040"
  end
end
