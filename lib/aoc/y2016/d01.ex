defmodule AoC.Y2016.D01 do
  use AoC.Day

  def part1(input) do
    input
    |> Enum.reduce(%{x: 0, y: 0, h: :N}, &move/2)
    |> dist()
  end

  defp move(instr, pos)
  defp move({:R, blocks} = _instr, %{x: x, y: y, h: :N} = _pos), do: %{x: x + blocks, y: y, h: :E}
  defp move({:R, blocks} = _instr, %{x: x, y: y, h: :E} = _pos), do: %{x: x, y: y - blocks, h: :S}
  defp move({:R, blocks} = _instr, %{x: x, y: y, h: :S} = _pos), do: %{x: x - blocks, y: y, h: :W}
  defp move({:R, blocks} = _instr, %{x: x, y: y, h: :W} = _pos), do: %{x: x, y: y + blocks, h: :N}
  defp move({:L, blocks} = _instr, %{x: x, y: y, h: :N} = _pos), do: %{x: x - blocks, y: y, h: :W}
  defp move({:L, blocks} = _instr, %{x: x, y: y, h: :E} = _pos), do: %{x: x, y: y + blocks, h: :N}
  defp move({:L, blocks} = _instr, %{x: x, y: y, h: :S} = _pos), do: %{x: x + blocks, y: y, h: :E}
  defp move({:L, blocks} = _instr, %{x: x, y: y, h: :W} = _pos), do: %{x: x, y: y - blocks, h: :S}

  defp dist(%{x: x, y: y}), do: abs(x) + abs(y)

  def part2(input) do
  end

  def parse_input!(input) do
    input
    |> String.trim()
    |> String.split(", ")
    |> Enum.map(&atomize_input!/1)
  end

  def atomize_input!("L" <> rest = _input), do: {:L, String.to_integer(rest)}
  def atomize_input!("R" <> rest = _input), do: {:R, String.to_integer(rest)}

end
