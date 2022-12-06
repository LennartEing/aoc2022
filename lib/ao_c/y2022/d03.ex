defmodule AoC.Y2022.D03 do
  use AoC.Day

  def part1(input) do
    input
    |> Enum.map(&Enum.split(&1, div(length(&1), 2)))
    |> Enum.map(fn {com1, com2} -> {MapSet.new(com1), MapSet.new(com2)} end)
    |> Enum.map(fn {compartment_1, compartment_2} -> MapSet.intersection(compartment_1, compartment_2) end)
    |> Enum.map(&MapSet.to_list/1)
    |> Enum.flat_map(&(&1))
    |> Enum.map(&prio/1)
    |> Enum.sum()
  end

  def prio(char) when char >= 0x41 and char <= 0x5a, do: char - 0x26
  def prio(char) when char >= 0x61 and char <= 0x7a, do: char - 0x60


  def part2(input) do
    input
    |> Enum.map(&MapSet.new/1)
    |> Enum.chunk_every(3)
    |> Enum.map(fn [a, b, c] -> MapSet.intersection(a, MapSet.intersection(b, c)) end)
    |> Enum.map(&MapSet.to_list/1)
    |> Enum.flat_map(&(&1))
    |> Enum.map(&prio/1)
    |> Enum.sum()
  end

  def parse_input!(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_charlist/1)
  end

end
