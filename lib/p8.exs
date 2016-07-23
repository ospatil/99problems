# Eliminate consecutive duplicates of list elements
defmodule P8 do
 def compress(list), do: _compress(list, [])
 defp _compress([head], acc), do: Enum.reverse([head | acc])
 defp _compress([first, first | tail], acc), do: _compress([first | tail], acc)
 defp _compress([first, second | tail], acc), do: _compress([second | tail], [first | acc])
end

ExUnit.start

defmodule P8Test do
  use ExUnit.Case

  test "P8.compress" do
    assert P8.compress([1, 1, 2, 3, 3, 3]) == [1, 2, 3]
  end
end
