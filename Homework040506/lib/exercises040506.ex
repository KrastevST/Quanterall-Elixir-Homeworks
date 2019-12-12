defmodule Exercises do
#1.
  def calculate({a, b, c}) do
    case {a, b, c} do
      {0, _, _} -> calc({b, c})
      {a, b, c} when b * b > 4 * a * c -> calc({a, b, c})
      {a, b, c} when b * b == 4 * a * c -> calc_single({a, b})
      {a, b, c} when b * b < 4 * a * c -> {:error, "There are no real roots"}
    end
  end

  defp calc({a, b, c}) do
    des = b * b - 4 * a * c
    x1 = (-b + :math.sqrt(des)) / 2 * a
    x2 = (-b - :math.sqrt(des)) / 2 * a
    {x1, x2}
  end
  defp calc({b, c}) do
    x1 = -c / b
    {x1, x1}
  end
  defp calc_single({a, b}) do
    x1 = -b / 2 * a
    {x1, x1}
  end

#2.
  def join(list, char) do
    Enum.reduce(list, "", fn (x, acc) -> acc <> to_string(x) <> char end)
    |>String.trim(char)
  end

#3.
  def access(list, index, value) do
    cond do
      index < length(list) -> Enum.at(list, index)
      true -> value
    end
  end

#4
  def sublist(list, n) do
    if n > length(list) do
      list
    else
      Enum.take(list, n)
    end
  end

#5
  def capitalize_strings(list) do
    for str <- list, do: String.upcase(str)
  end
  def extract_short(list) do
    for str <- list, String.length(str) < 5 , do: String.capitalize(str)
  end

  # ["Mr. ", "Mrs. "]
  # ["Ivan Georgiev", "Nikola Nikolov", "Antoaneta Velieva"]
  def give_titles(titles, names) do
    for name <- names do
      x = if String.last(name) == "a" do
        Enum.at(titles, 1) <> name
      else
        Enum.at(titles, 0) <> name
      end
      x
    end
  end

#6.
  def length_of_tuple(tuple) when (tuple_size(tuple) > 4), do: IO.puts("Shouldn't you use a list")
  def length_of_tuple(tuple), do: IO.puts(tuple_size(tuple))

#7.
  def calc_product([]), do: 0
  def calc_product([h|t]), do: Enum.reduce([h|t], 1, fn(x, acc) -> x * acc end)
#8.
  def take_even(list), do: Enum.filter(list, fn x -> rem(x, 2) === 0 && x !== 0 end)

#9.
  def concat(list), do: Enum.join(list, "")

end
