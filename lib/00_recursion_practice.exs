defmodule Recur do
  # map. builtin - Enum.map/2
  def map([], _func), do: []
  def map([head | tail], func) when is_function(func, 1), do: [func.(head) | map(tail, func)]

  # left fold. builtin - List.foldl/3
  def foldl([], acc, _func), do: acc
  def foldl([head | tail], acc, func) when is_function(func, 2), do: foldl(tail, func.(head, acc), func)
end

ExUnit.start

defmodule RecurTest do
  	, async: true

  test "Recur.map" do
    assert Recur.map([1,2,3], &(&1 * 2)) == [2,4,6]
  end

  test "Recur.foldl" do
    assert Recur.foldl([1,2,3], 0, &(&1 + &2)) == 6
  end
end
