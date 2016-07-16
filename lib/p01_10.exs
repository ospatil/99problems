defmodule P1To10 do
# Problem 1
# Write a function last that returns the last element of a list.
def last([]), do: []
def last([head | []]), do: head
def last([_head | tail]), do: last(tail)
end

ExUnit.start()

defmodule P1To10Test do
  use ExUnit.Case

  test "Problem1:last" do
    assert P1To10.last([]) == []
    assert P1To10.last([1]) == 1
    assert P1To10.last([1, 2, 3, 4]) == 4
  end
end
