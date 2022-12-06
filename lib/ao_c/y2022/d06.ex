defmodule AoC.Y2022.D06 do
  use AoC.Day

  def part1(input) do
    first_unique!(input)
  end

  @spec start_of_packet_marker_end!(binary(), binary(), non_neg_integer()) :: non_neg_integer()
  def start_of_packet_marker_end!(input, buffer \\ "", current_pos \\ 0)

  def start_of_packet_marker_end!(<<head::binary-size(1), rest::binary()>>, <<buffer_head::binary-size(2), _last::binary-size(1)>> = buffer, current_pos) do
    cond do
      String.graphemes(head <> buffer) == String.graphemes(head <> buffer) |> Enum.uniq() ->
        current_pos + 1
      true ->
        start_of_packet_marker_end!(rest, head <> buffer_head, current_pos + 1)
    end
  end

  def start_of_packet_marker_end!(<<head::binary-size(1), rest::binary()>>, buffer, current_pos), do: start_of_packet_marker_end!(rest, head <> buffer, current_pos + 1)

  def part2(input) do
    first_unique!(input, 14)
  end

  @spec first_unique!(binary(), non_neg_integer(), binary(), non_neg_integer()) :: non_neg_integer()
  def first_unique!(<<head::binary-size(1), rest::binary()>>, num \\ 4, buffer \\ "", current_pos \\ 0) do
    buffer_len = num - 2
    case buffer do
      <<buffer_head::binary-size(buffer_len), _last::binary-size(1)>> ->
        cond do
          String.graphemes(head <> buffer) == String.graphemes(head <> buffer) |> Enum.uniq() ->
            current_pos + 1
          true ->
            first_unique!(rest, num, head <> buffer_head, current_pos + 1)
        end
      _ ->
        first_unique!(rest, num, head <> buffer, current_pos + 1)
    end
  end

  def parse_input!(input), do: input
end
