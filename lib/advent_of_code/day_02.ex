defmodule AdventOfCode.Day02 do
  def part1(args) do
    args
    |> parse_directions
    |> drive({0, 0})
  end

  def part2(args) do
    args
    |> parse_directions
    |> aim({0, 0, 0})
  end

  def parse_directions(args) do
    args
    |> String.splitter("\n", trim: true)
    |> Enum.map(&String.split/1)
    |> Enum.map(fn [direction, count] -> [direction, String.to_integer(count)] end)
  end

  defp drive([step | tail], {x, y}) do
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

  defp aim([step | tail], {x, y, aim}) do
    case step do
      ["forward", count] ->
        aim(tail, {x + count, y + count * aim, aim})

      ["down", count] ->
        aim(tail, {x, y, aim + count})

      ["up", count] ->
        aim(tail, {x, y, aim - count})
    end
  end

  defp aim([], {x, y, _}), do: x * y
end
