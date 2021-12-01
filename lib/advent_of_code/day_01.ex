defmodule AdventOfCode.Day01 do
  def part1(args) do
    ints = argsToInts(args)
    [initial | _] = ints

    {_, count} =
      ints
      |> Enum.reduce({initial, 0}, fn x, acc ->
        if x > elem(acc, 0) do
          {x, elem(acc, 1) + 1}
        else
          {x, elem(acc, 1)}
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
