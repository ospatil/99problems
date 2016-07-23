# Eliminate consecutive duplicates of list elements
defmodule P8 do
 def compress(list), do: do_compress(list, [])
 defp do_compress([head], acc), do: Enum.reverse([head | acc])
 defp do_compress([first, first | tail], acc), do: do_compress([first | tail], acc)
 defp do_compress([first, second | tail], acc), do: do_compress([second | tail], [first | acc])
end

ExUnit.start

defmodule P8Test do
  use ExUnit.Case

  test "P8.compress" do
    assert P8.compress([1, 1, 2, 3, 3, 3]) == [1, 2, 3]
  end
end
