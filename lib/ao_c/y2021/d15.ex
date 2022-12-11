defmodule AoC.Y2021.D15 do
  use AoC.Day

  def part1(input) do
    input
  end

  def part2(input) do
  end

  def parse_input!(input),
    do:
      input
      |> String.trim()
      |> String.split("\n")
      |> Enum.map(&String.graphemes/1)
      |> Enum.map(&Enum.map(&1, fn i -> String.to_integer(i) end))
end
