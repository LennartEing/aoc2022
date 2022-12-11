defmodule AoC.Y2016Test do
  use ExUnit.Case

  @tag :skip
  test "201601" do
    AoC.Y2016.D01.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2016.D01.part2() |> IO.inspect(label: "Part 2")
  end

end
