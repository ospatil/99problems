defmodule P1 do
  # Problem 1 - Write a function last that returns the last element of a list.
  def last([]), do: nil
  def last([a]), do: a
  def last([_head | tail]), do: last(tail)
end

ExUnit.start()

defmodule P1Test do
  use ExUnit.Case

  test "P1.last" do
    assert P1.last([]) == nil
    assert P1.last([1]) == 1
    assert P1.last([1, 2, 3, 4]) == 4
  end
end
