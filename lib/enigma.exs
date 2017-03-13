defmodule Enigma do
  def encrypt(message, key, offsets) do
    letters = String.codepoints(message)
    character_map = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
        'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
        'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3',
        '4', '5', '6', '7', '8', '9', ' ', '.', ',']
    Enum.map([letters], fn x -> Enum.with_index([character_map]) |> Enum.filter_map(fn {x, _} -> x  == x end, fn {_, i} -> i end) end)

  end
end
