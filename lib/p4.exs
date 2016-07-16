defmodule P4 do
  # Find the number of elements of a list.
  def length(list), do: _length(list, 0)

  defp _length([], counter), do: counter
  defp _length([_ | tail], counter), do: _length(tail, counter + 1)
end

ExUnit.start

defmodule P4Test do
  use ExUnit.Case

  test "P4.length" do
    assert P4.length([]) == 0
    assert P4.length([1, 2, 3]) == 3
  end
end
