defmodule Counter do
  @spec start(number) :: pid
  def start(initial_count) do
    spawn(fn -> Counter.Server.run(initial_count) end)
  end

  @spec tick(atom | pid | port | {atom, atom}) :: no_return
  def tick(pid) do
    send(pid, {:tick, self()})
  end

  @spec state(atom | pid | port | {atom, atom}) :: number
  def state(pid) do
    send(pid, {:state, self()})

    receive do
      {:count, value} -> value
    end
  end
end
