defmodule P7 do
  def flatten([]), do: []
  def flatten([head | tail]) when is_list(head), do: flatten(head) ++ flatten(tail)
  def flatten([head | tail]), do: [head | flatten(tail)]
end

ExUnit.start

defmodule P7Test do
  use ExUnit.Case

  test "P7.flatten" do
    assert P7.flatten([1, 2, [3, 4, [5, 6]], 7]) == [1, 2, 3, 4, 5, 6, 7]
  end
end
