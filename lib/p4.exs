defmodule P4 do
  # Find the number of elements of a list.
  def len([]), do: 0
  def len([_ | tail]), do: 1 + len(tail)
end

ExUnit.start

defmodule P4Test do
  use ExUnit.Case

  test "P4.length" do
    assert P4.len([]) == 0
    assert P4.len([1, 2, 3]) == 3
  end
end
