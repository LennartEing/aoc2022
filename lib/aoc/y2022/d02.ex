defmodule AoC.Y2022.D02 do
  use AoC.Day

  def part1(input) do
    input
    |> Enum.map(&round_score(&1))
    |> Enum.sum()
  end

  defp round_score(round), do: shape_score(round) + win_score(round)

  defp shape_score({_, :X}), do: 1
  defp shape_score({_, :Y}), do: 2
  defp shape_score({_, :Z}), do: 3

  defp win_score({:A, :X}), do: 3
  defp win_score({:A, :Y}), do: 6
  defp win_score({:A, :Z}), do: 0
  defp win_score({:B, :X}), do: 0
  defp win_score({:B, :Y}), do: 3
  defp win_score({:B, :Z}), do: 6
  defp win_score({:C, :X}), do: 6
  defp win_score({:C, :Y}), do: 0
  defp win_score({:C, :Z}), do: 3

  def part2(input), do: input |> Enum.map(&choose_round(&1)) |> part1()

  defp choose_round({:A, :X}), do: {:A, :Z}
  defp choose_round({:A, :Y}), do: {:A, :X}
  defp choose_round({:A, :Z}), do: {:A, :Y}
  defp choose_round({:B, :X}), do: {:B, :X}
  defp choose_round({:B, :Y}), do: {:B, :Y}
  defp choose_round({:B, :Z}), do: {:B, :Z}
  defp choose_round({:C, :X}), do: {:C, :Y}
  defp choose_round({:C, :Y}), do: {:C, :Z}
  defp choose_round({:C, :Z}), do: {:C, :X}

  def parse_input!(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&atomize_round(&1))
  end

  defp atomize_round(round),
    do: {
      String.first(round) |> to_string |> String.to_atom(),
      String.last(round) |> to_string |> String.to_atom()
    }
end
