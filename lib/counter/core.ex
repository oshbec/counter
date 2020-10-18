defmodule Counter.Core do
  @spec inc(number) :: number
  def inc(value) do
    value + 1
  end
end
