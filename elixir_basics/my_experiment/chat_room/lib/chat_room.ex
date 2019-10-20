defmodule ChatRoom do
  require Logger
  @moduledoc """
  Documentation for ChatRoom.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ChatRoom.hello()
      :world

  """
  def hello do
    :world
  end

  def accept(port) do
    {:ok, socket} = :gen_tcp.listen(port, [:binary, packet: :line, active: false, reuseaddr: true])
    Logger.info("Accepting connections on port #{port}")
    loop_acceptor(socket)
  end

  defp loop_acceptor(socket) do
    {:ok, client} = :gen_tcp.accept(socket)
    {:ok, pid} = spawn (fn -> serve(client) end)
    #serve(client)
    loop_acceptor(socket)
  end

  defp serve(socket) do
    socket
    |>read_line()
    |>write_line(socket)
    serve(socket)
  end

  defp read_line(socket) do
    {:ok, data} = :gen_tcp.recv(socket,0)
    data
    end

  def write_line(line, socket) do
    :gen_tcp.send(socket, line)
  end
end
