defmodule AoCTest do
  use ExUnit.Case
  doctest AoC

  @tag :skip
  test "201601" do
    AoC.Y2016.D01.part1() |> IO.inspect(label: "Part 1")
    AoC.Y2016.D01.part2() |> IO.inspect(label: "Part 2")
  end

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

  test "202206" do
    assert AoC.Y2022.D06.part1("mjqjpqmgbljsphdztnvjfqwrcgsmlb", :test) == 7
    assert AoC.Y2022.D06.part1("bvwbjplbgvbhsrlpgdmjqwftvncz", :test) == 5
    assert AoC.Y2022.D06.part1("nppdvjthqldpwncqszvftbrmjlhg", :test) == 6
    assert AoC.Y2022.D06.part1("nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg", :test) == 10
    assert AoC.Y2022.D06.part1("zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw", :test) == 11
    AoC.Y2022.D06.part1() |> IO.inspect(label: "Part 1")

    assert AoC.Y2022.D06.part2("mjqjpqmgbljsphdztnvjfqwrcgsmlb", :test) == 19
    assert AoC.Y2022.D06.part2("bvwbjplbgvbhsrlpgdmjqwftvncz", :test) == 23
    assert AoC.Y2022.D06.part2("nppdvjthqldpwncqszvftbrmjlhg", :test) == 23
    assert AoC.Y2022.D06.part2("nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg", :test) == 29
    assert AoC.Y2022.D06.part2("zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw", :test) == 26
    AoC.Y2022.D06.part2() |> IO.inspect(label: "Part 2")
  end
end
