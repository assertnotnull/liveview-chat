defmodule ChatWeb.RoomLive do
  use ChatWeb, :live_view
  require Logger

  @impl true
  def mount(%{"id" => room_id}, _session, socket) do
    Logger.info(room_id)
    {:ok, assign(socket, room_id: room_id)}
  end

  @impl true
  def handle_event("submit_message", %{"chat" => %{"message" => message}}, socket) do
    Logger.info(message: message)
    {:noreply, socket}
  end
end
