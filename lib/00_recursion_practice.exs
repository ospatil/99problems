defmodule Recur do
  # map
  def map([], _func), do: []
  def map([head | tail], func) when is_function(func, 1), do: [func.(head) | map(tail, func)]
end

ExUnit.start

defmodule RecurTest do
  use ExUnit.Case, async: true

  test "Recur.map" do
    assert Recur.map([1,2,3], &(&1 * 2)) == [2,4,6]
  end
end
