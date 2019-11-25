#1.
  defmodule Ex1 do
    def check_type(input) when is_list(input), do: anounce_list(input)
    def check_type(input) when is_tuple(input), do: anounce_tuple(input) |> check_type
    def check_type(input) when is_map(input), do: anounce_map(input) |> check_type

    defp anounce_list(list) do
      first = List.first(list) || "non-existend because the list is empty"
      IO.puts("The argument is a list, its first argument is #{first}")
    end
    defp anounce_tuple(tuple) do
      IO.puts("The argument is a tuple")
      Tuple.to_list(tuple)
    end
    defp anounce_map(map) do
      IO.puts("The argument is a map")
      Map.values(map)
    end
  end

#2.
  defmodule Ex2 do
    # [1, [2, 3], 4]
    def match1(list) do
      List.first(list)
    end

    def match2(list) do
      [_,[x|_],_] = list
      x
    end
  end

#3.
  defmodule Ex3 do
    def increment(list) do
      Enum.map_every(list, 1, fn x -> x + 1 end)
    end
  end

#4.
  defmodule Ex4 do
    def calc_perimeter(input) when is_list(input), do: calc(input)
    def calc_perimeter(input) when is_map(input), do: Map.values(input) |> calc_perimeter
    def calc_perimeter(input) when is_tuple(input), do: Tuple.to_list(input) |> calc_perimeter

    defp calc(sides) do
      {_sides, result} = Enum.map_reduce(sides, 0, fn x, acc -> {x, x + acc} end)
      result
    end
  end

#5. && 6.
  defmodule Ex5 do
    # [%{name: "Tom", age: 14}, %{name: "Jerry", age: 21}, %{name: "Donald", age: 18}]
    def convert(data) do
      Enum.map(data, fn
        (%{age: 1, name: name}) -> "#{name}: 1 year old"
        (%{age: age, name: name}) -> "#{name}: #{age} years old"
      end)
    end
  end

#7.
  defmodule Ex7 do
    # ["An example sentence", "Another sentence", "Third sentence"]
    def filter_sentences(sentences) do
      Enum.filter(sentences, fn x -> !String.contains?(String.downcase(x), "a") end)
    end
  end
