defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  setup do
    {:ok,
     input: """
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
     """}
  end

  test "part1", context do
    result = part1(context[:input])

    assert result == 16 * 22
  end

  test "part2", context do
    result = part2(context[:input])

    assert result == 16 * 247
  end
end
