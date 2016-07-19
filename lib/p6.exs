defmodule P6 do
  # can be easily done by comparing string with its reverse
  # but found this illuminating piece of recursion here - https://github.com/mindreframer/elixir-stuff/blob/master/github.com/oslampa/99Problems/lib/problems.ex
  def palindrome?(list), do: _palindrome?([], list)
  defp _palindrome?(left, right) when length(left) == length(right), do: left == right
  defp _palindrome?(left, [_|right]) when length(left) == length(right), do: left == right
  defp _palindrome?(left, [middle|right]), do: _palindrome?([middle|left], right)
end
