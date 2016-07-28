# Implement builtin Enum and List module api but only for lists

defmodule MyList do
  # Enum.all?/2, Enum.all?/1
  def all?(list, fun \\ &(&1))
  def all?(list, fun), do: do_all?(list, fun, true)
  defp do_all?([], _, bool), do: bool
  defp do_all?([head | tail], fun, true), do: do_all?(tail, fun, fun.(head))
  defp do_all?([_ | tail], fun, false), do: do_all?(tail, fun, false)

  # Enum.reverse/1
  def reverse(list), do: do_reverse(list, [])
  defp do_reverse([], result), do: result
  defp do_reverse([head | tail], result), do: do_reverse(tail, [head | result])

  # map. builtin - Enum.map/2
  def map([], _func), do: []
  def map([head | tail], func) when is_function(func, 1), do: [func.(head) | map(tail, func)]

  # left fold. builtin - List.foldl/3
  def foldl([], acc, _func), do: acc
  def foldl([head | tail], acc, func) when is_function(func, 2), do: foldl(tail, func.(head, acc), func)
end

ExUnit.start

defmodule MyListTest do
  use ExUnit.Case, async: true

  test "all? should return true for an empty list" do
    assert MyList.all?([]) == true
  end

  test "all? should return false if any value in the list is false" do
    assert MyList.all?([true, false, true]) == false
  end

  test "all? should use provided function" do
    assert MyList.all?([1, 2, 3, 0], &(&1 > 0)) == false
  end

  test "reverse should return empty list for empty list" do
    assert MyList.reverse([]) == []
  end

  test "reverse should return reversed list" do
    assert MyList.reverse([1, 2, 3]) == [3, 2, 1]
  end

  test "map should return empty list for empty list" do
    assert MyList.map([], &(&1)) == []
  end

  test "map should return mapped list" do
    assert MyList.map([1, 2, 3], &(&1 + 1)) == [2, 3, 4]
  end

  test "MyList.foldl" do
    assert MyList.foldl([1,2,3], 0, &(&1 + &2)) == 6
  end
end
