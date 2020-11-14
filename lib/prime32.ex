defmodule Prime32 do
  @moduledoc """
  This very small library wraps a file containing all prime numbers that fit in 32 bits.

  Prime numbers are made available in a stream by the `stream/0` function,
  and by the `device/0` function, which gives read access to the file this library pulls from.
  """

  @doc """
  Returns a `Stream` of prime numbers starting from 2 up to the maximum 32-bit prime, 4294967291.

  ## Examples

      iex> Prime32.stream() |> Enum.take(5)
      [2, 3, 5, 7, 11]

      iex> Prime32.stream() |> Enum.take_while(&(&1 < 20))
      [2, 3, 5, 7, 11, 13, 17, 19]
  """
  def stream do
    # The file must be split into three parts because GitHub doesn't
    # like files that are greater than 100 MB.
    first_part = stream_for_file "primes1.bin.gz"
    second_part = stream_for_file "primes2.bin.gz"
    third_part = stream_for_file "primes3.bin.gz"

    first_part
    |> Stream.concat(second_part)
    |> Stream.concat(third_part)
    |> Stream.map(fn <<a, b, c, d>> ->
      a + (b * 256) + (c * 65536) + (d * 16777216)
    end)
  end

  defp stream_for_file(name) do
    File.stream!(Path.join(__DIR__, [name]), [:binary, :compressed, {:read_ahead, 2048}], 4)
  end
end
