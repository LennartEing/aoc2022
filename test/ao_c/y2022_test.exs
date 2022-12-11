defmodule AoC.Y2022Test do
  use ExUnit.Case

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

  @tag :skip
  test "202203" do
    AoC.Y2022.D03.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2022.D03.part2() |> IO.inspect(label: "Part 2")
  end

  @tag :skip
  test "202204" do
    AoC.Y2022.D04.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2022.D04.part2() |> IO.inspect(label: "Part 2")
  end

  test "202205" do
    AoC.Y2022.D05.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2022.D05.part1() |> IO.inspect(label: "Part 2")
  end

end
