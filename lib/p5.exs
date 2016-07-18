defmodule P5 do
  def reverse(list), do: _reverse(list, [])
  defp _reverse([], acc), do: acc
  defp _reverse([head | tail], acc), do: _reverse(tail, [head | acc])
end

ExUnit.start

defmodule P5Test do
  use ExUnit.Case

  test "P5.reverse" do
    assert P5.reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
    assert P5.reverse([]) == []
  end
end
