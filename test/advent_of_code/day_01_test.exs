defmodule AdventOfCode.Day01Test do
  use ExUnit.Case

  import AdventOfCode.Day01

  test "part1" do
    input = [1, 2, 3, 2, 3, 4, 3, 65]
    result = part1(input)

    assert result == 5
  end

  test "part2" do
    input = [1, 2, 2, 1, 1, 4, 3, 65]
    result = part2(input)

    assert result == 3
  end
end
