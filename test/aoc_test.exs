defmodule AoCTest do
  use ExUnit.Case
  doctest AoC

  test "day 1" do
    AoC.Y2022.D01.part1()
    AoC.Y2022.D01.part2() |> IO.inspect()
  end
end
