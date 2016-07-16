defmodule P3 do
  # Find the k'th element of a list. The first element in the list is number 1.
  def at(pos, list), do: _at(pos, list, 1)

  defp _at(_, [], _), do: nil
  defp _at(pos, [head | _], counter) when pos == counter, do: head
  defp _at(pos, [_ | tail], counter), do: _at(pos, tail, counter + 1)

end

ExUnit.start()

defmodule P3Test do
  use ExUnit.Case

  test "P3.at" do
    assert P3.at(3, [1, 2, 3]) == 3
    assert P3.at(3, []) == nil
  end
end
