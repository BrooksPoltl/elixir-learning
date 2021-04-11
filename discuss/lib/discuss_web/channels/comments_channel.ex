defmodule Discuss.CommentsChannel do
  use DiscussWeb, :channel

  def join(_name, _params, socket) do
    {:ok, %{hey: "there"}, socket}
  end

  def handle_in(_name, _message, socket) do
    {:reply, :ok, socket}
  end
end
