defmodule AoC.Y2021.D16 do
  use AoC.Day

  def part1(input) do
    input
  end

  def part2(input) do

  end

  def parse_input!(input) do
    input
    |> String.trim()
    |> String.graphemes()
    |> Enum.map(&Integer.parse(&1, 16))
  end

end
