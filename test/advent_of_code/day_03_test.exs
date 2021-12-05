defmodule AdventOfCode.Day03Test do
  use ExUnit.Case

  import AdventOfCode.Day03

  setup do
    {:ok,
     input: """
      00100
      11110
      10110
      10111
      10101
      01111
      00111
      11100
      10000
      11001
      00010
      01010
     """}
  end

  test "part1", context do
    result = part1(context[:input])

    assert result == 198
  end

  @tag :skip
  test "part2", context do
    result = part2(context[:input])

    assert result
  end
end
