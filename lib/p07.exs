defmodule P7 do
  def flatten(list), do: Enum.reverse(do_flatten(list, []))
  defp do_flatten([], result), do: result
  defp do_flatten([head | tail], result) when is_list(head), do: do_flatten(tail, do_flatten(head, result))
  defp do_flatten([head | tail], result), do: do_flatten(tail, [head | result])
end

ExUnit.start

defmodule P7Test do
  use ExUnit.Case

  test "P7.flatten" do
    assert P7.flatten([1, 2, [3, 4, [5, 6]], 7]) == [1, 2, 3, 4, 5, 6, 7]
  end
end
