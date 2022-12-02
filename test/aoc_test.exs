defmodule AoCTest do
  use ExUnit.Case
  doctest AoC

  @tag :skip
  test "202201" do
    AoC.Y2022.D01.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2022.D01.part2() |> IO.inspect(label: "Part 2")
  end

  @tag :skip
  test "202202" do
    AoC.Y2022.D02.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2022.D02.part2() |> IO.inspect(label: "Part 2")
  end
end
