defmodule AoC.Y2022.D05 do
  alias AoC.Utils.Stack
  use AoC.Day

  def part1(input) do
    {start_arr, moves} = input
    moves
  end

  def part2(input) do
  end

  def parse_input!(input) do
    [start_arr, moves] =
      input
      |> String.trim()
      |> String.split("\n\n")

    moves =
      moves
      |> String.split("\n")
      |> Enum.map(
        &Regex.named_captures(~r/move (?<quantity>\d+) from (?<from>\d+) to (?<to>\d+)/, &1)
      )
      |> Enum.map(fn %{"from" => from, "to" => to, "quantity" => quantity} -> %{
        from: String.to_integer(from),
        to: String.to_integer(to),
        quantity: String.to_integer(quantity)
      } end)

    start_arr =
      start_arr
      |> String.split("\n")
      |> Enum.reverse()
      |> Enum.map(&String.pad_trailing(&1, 35))
      |> then(&Enum.take(&1, -length(&1) + 1))
      |> Enum.map(&String.replace(&1, "[", ""))
      |> Enum.map(&String.replace(&1, "]", ""))
      |> Enum.map(&String.replace(&1, "  ", " "))
      |> Enum.reduce(for _i <- 1..9 do Stack.new() end, &parse_line!/2)
    {start_arr, moves}
  end

  @spec parse_line!(binary(), [Stack.t()], non_neg_integer()) :: [Stack.t()]
  defp parse_line!(line, stacks, pos \\ 0)

  defp parse_line!("", stacks, _pos), do: stacks

  defp parse_line!(<<symbol::binary-size(1)>>, stacks, pos),
    do: parse_line!(symbol <> " ", stacks, pos)

  defp parse_line!("  " <> rest, stacks, pos), do: parse_line!(rest, stacks, pos + 1)

  defp parse_line!(<<symbol::binary-size(1)>> <> " " <> rest, stacks, pos) do
    stack = Enum.at(stacks, pos)
    stack = Stack.push(stack, symbol)
    stacks = List.replace_at(stacks, pos, stack)
    parse_line!(rest, stacks, pos + 1)
  end
end
