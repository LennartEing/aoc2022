defmodule AoC.Utils.Input do
  @type reason :: atom() | {atom() | binary()}

  @spec get!(DateTime.t()) :: binary()
  def get!(%DateTime{year: year, day: day} \\ DateTime.now!("Etc/UTC")), do: get!(year, day)

  @spec get!(integer(), integer()) :: binary()
  def get!(year, day) do
    if not in_cache?(year, day), do: download!(year, day) |> store!(year, day)
    load!(year, day)
  end

  @spec cache_path!(integer(), integer()) :: binary()
  defp cache_path!(year, day), do: cache_dir!() |> Path.join("/#{year}/#{day}.aoc")

  @spec store!(binary(), integer(), integer()) :: :ok
  defp store!(input, year, day) do
    :ok = cache_path!(year, day) |> Path.dirname() |> File.mkdir_p!()
    :ok = File.write!(cache_path!(year, day), input)
  end

  @spec load!(integer(), integer()) :: binary()
  defp load!(year, day), do: cache_path!(year, day) |> File.read!()

  @spec in_cache?(integer(), integer()) :: boolean()
  defp in_cache?(year, day), do: cache_path!(year, day) |> File.exists?()

  @spec download!(integer(), integer()) :: binary()
  defp download!(year, day) do
    case response =
           HTTPoison.get!(
             "https://adventofcode.com/#{year}/day/#{day}/input",
             headers!()
           ) do
      %HTTPoison.Response{
        status_code: 200,
        body: input
      } ->
        input

      _ ->
        raise "There was an unexpected response from the server.\n#{inspect(response)}"
    end
  end

  defp headers!, do: [{"cookie", "session=" <> Application.fetch_env!(:aoc, :session_cookie)}]
  defp cache_dir!, do: Application.fetch_env!(:aoc, :cache_dir) |> Path.expand()
end
