defmodule P2 do
  # Problem 2 - Find the last but one element of a list.
  def last_but_one([a, _]), do: a
  def last_but_one([ _ | tail]), do: last_but_one(tail)
end

ExUnit.start()

defmodule P2Test do
  use ExUnit.Case

  test "P2.last_but_one" do
    assert P2.last_but_one([1, 2, 3]) == 2
    assert P2.last_but_one([1, 2]) == 1
  end
end
