# Eliminate consecutive duplicates of list elements
defmodule P8 do
  def compress(list), do: Enum.reverse(do_compress(list, []))
  defp do_compress([], result), do: result
  defp do_compress([a], result), do: [a | result]
  defp do_compress([a, a | tail], result), do: do_compress([a | tail], result)
  defp do_compress([a, b | tail], result), do: do_compress([b | tail], [a | result])
end

ExUnit.start

defmodule P8Test do
  use ExUnit.Case

  test "P8.compress" do
    assert P8.compress([]) == []
    assert P8.compress([1]) == [1]
    assert P8.compress([1, 1, 2, 3, 3, 3]) == [1, 2, 3]
  end
end
