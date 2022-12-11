defmodule AoC.Y2021Test do
  use ExUnit.Case

  @tag :skip
  test "202115" do
    AoC.Y2021.D15.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2021.D15.part2() |> IO.inspect(label: "Part 2")
  end

  @tag :skip
  test "202116" do
    AoC.Y2021.D16.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2021.D16.part2() |> IO.inspect(label: "Part 2")
  end

end
