defmodule P5 do
  def reverse(list), do: do_reverse(list, [])
  defp do_reverse([], acc), do: acc
  defp do_reverse([head | tail], acc), do: do_reverse(tail, [head | acc])
end

ExUnit.start

defmodule P5Test do
  use ExUnit.Case

  test "P5.reverse" do
    assert P5.reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
    assert P5.reverse([]) == []
  end
end
