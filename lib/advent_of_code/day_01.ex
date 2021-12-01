defmodule AdventOfCode.Day01 do
  def part1(args) do
    {_, count} =
      argsToInts(args)
      |> Enum.reduce({0, 0}, fn x, acc ->
        prev = elem(acc, 0)
        count = elem(acc, 1)

        cond do
          prev == 0 -> {x, 0}
          x > prev -> {x, count + 1}
          true -> {x, count}
        end
      end)

    count
  end

  def part2(args) do
  end

  defp argsToInts(args) when is_list(args) do
    args
  end

  defp argsToInts(args) when is_binary(args) do
    args
    |> String.split("\n")
    |> Enum.filter(fn x -> x != "" end)
    |> Enum.map(fn x ->
      {num, _} = Integer.parse(x)
      num
    end)
  end
end
