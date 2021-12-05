defmodule AdventOfCode.Day03 do
  def part1(args) do
    t =
      args
      |> parse_input()
      |> Nx.tensor()

    # Get means of columns
    mean = Nx.mean(t, axes: [0])

    # Get inverse of the mean of columns
    inverse =
      Nx.tensor(1)
      |> Nx.subtract(mean)

    mean_to_rate(mean) * mean_to_rate(inverse)
  end

  def part2(args) do
    IO.inspect(args)
  end

  # Convert means to rates
  defp mean_to_rate(tensor) do
    tensor
    |> Nx.round()
    |> Nx.to_flat_list()
    # Convert back to string
    |> Enum.map(&round/1)
    |> Enum.join()
    # Get the decimal value of the rate
    |> Integer.parse(2)
    |> elem(0)
  end

  # Parse input to a 2D matrix
  defp parse_input(args) do
    args
    |> String.splitter("\n", trim: true)
    |> Enum.map(&String.trim/1)
    |> Enum.map(fn x ->
      String.codepoints(x)
      |> Enum.map(&String.to_integer/1)
    end)
  end
end
