defmodule AoC.Y2023.D01 do
  use AoC.Day

  @spec part1([binary()]) :: integer()
  def part1(input) do
    input
    |> Enum.map(&String.replace(&1, ~r/[^\d]/, ""))

  end


  def part2(input) do
    input
    |> IO.inspect()
  end

  @spec parse_input!(binary) :: [binary]
  def parse_input!(input) do
    input
    |> String.split("\n")
  end
end
