defmodule AdventOfCode.Day02 do
  def part1(args) do
    args
    |> String.splitter("\n", trim: true)
    |> Enum.map(&String.split/1)
    |> Enum.map(fn [direction, count] -> [direction, String.to_integer(count)] end)
    |> drive({0, 0})
  end

  def part2(args) do
  end

  defp drive([step | tail], acc) do
    {x, y} = acc

    case step do
      ["forward", count] ->
        drive(tail, {x + count, y})

      ["down", count] ->
        drive(tail, {x, y + count})

      ["up", count] ->
        drive(tail, {x, y - count})
    end
  end

  defp drive([], {x, y}), do: x * y
end
