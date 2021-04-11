defmodule DiscussWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "comments:*", Discuss.CommentsChannel

  @impl true
  def connect(_params, socket) do
    {:ok, socket}
  end

  @impl true
  def id(_socket), do: nil
end
