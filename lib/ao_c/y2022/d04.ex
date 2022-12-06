defmodule AoC.Y2022.D04 do
  use AoC.Day

  def part1(input) do
    input
    |> Enum.filter(fn %{
      l1: l1,
      l2: l2,
      u1: u1,
      u2: u2
    } -> (l1 <= l2 and u2 <= u1) or (l2 <= l1 and u1 <= u2) end)
    |> length()
  end

  def part2(input) do
    input
    |> Enum.filter(fn %{
      l1: l1,
      l2: l2,
      u1: u1,
      u2: u2
    } -> (l1 <= u2 && l2 <= u1) end)
    |> length()
  end

  def parse_input!(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&Regex.named_captures(~r/(?<l1>\d+)-(?<u1>\d+),(?<l2>\d+)-(?<u2>\d+)/, &1))
    |> Enum.map(fn %{
      "l1" => l1,
      "l2" => l2,
      "u1" => u1,
      "u2" => u2,
    } -> %{
      l1: String.to_integer(l1),
      l2: String.to_integer(l2),
      u1: String.to_integer(u1),
      u2: String.to_integer(u2)
    } end)
  end

end
