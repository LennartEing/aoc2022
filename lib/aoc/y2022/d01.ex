defmodule AoC.Y2022.D01 do
  use AoC.Day

  @spec part1([binary()]) :: integer()
  def part1(input), do: input |> Enum.map(&Enum.sum(&1)) |> Enum.max()

  @spec part2([binary()]) :: term()
  def part2(input),
    do: input |> Enum.map(&Enum.sum(&1)) |> Enum.sort(:desc) |> Enum.take(3) |> Enum.sum()

  @spec parse_input!(binary) :: [binary]
  def parse_input!(input) do
    input
    |> String.split("\n\n")
    |> Enum.map(&String.split(&1))
    |> Enum.map(fn list -> list |> Enum.map(&String.to_integer(&1)) end)
  end
end
