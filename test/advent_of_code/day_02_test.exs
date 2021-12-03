defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  test "part1" do
    input = """
      forward 2
      down 4
      down 1
      down 4
      forward 3
      down 6
      down 5
      forward 3
      forward 8
      down 2
      down 3
      up 8
      down 5
    """

    result = part1(input)

    assert result == 16 * 22
  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end
