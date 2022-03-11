defmodule CounterWeb.CounterLive do
  use CounterWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    # When the view loads we set the initial count to 0
    socket = assign(socket, count: 0)
    {:ok, socket}
  end

  @impl true
  def handle_event("increase", _, socket) do
    # Add 1 to the current count
    socket = assign(socket, count: socket.assigns.count + 1)
    {:noreply, socket}
  end

  @impl true
  def handle_event("decrease", _, socket) do
    # Substract 1 to the current count
    socket = assign(socket, count: socket.assigns.count - 1)
    {:noreply, socket}
  end


end
