# Pack consecutive duplicates of list elements into sublists.
defmodule P09 do
  def pack(list), do: do_pack(list, [], [])
  defp do_pack([], sublist, result), do: Enum.reverse([sublist | result])
  defp do_pack([head | tail], [], result), do: do_pack(tail, [head], result)
  defp do_pack([head | tail], [sublist_head | sublist_tail], result) when head == sublist_head,
    do: do_pack(tail, [head, sublist_head | sublist_tail], result)
  defp do_pack([head | tail], [sublist_head | sublist_tail], result),
    do: do_pack(tail, [head], [[sublist_head | sublist_tail] | result])
end

ExUnit.start

defmodule P09Test do
  use ExUnit.Case

  test "P09.pack" do
    assert P09.pack([]) == [[]]
    assert P09.pack([1]) == [[1]]
    assert P09.pack([1, 2, 2, 3]) == [[1], [2, 2], [3]]
    assert P09.pack([1, 1, 2, 3, 3]) == [[1, 1], [2], [3, 3]]
  end
end
