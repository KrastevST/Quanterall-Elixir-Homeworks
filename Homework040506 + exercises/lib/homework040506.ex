defmodule Homework do
#1.

#2.
  def respond(str) do
    upcase? = fn x -> x == String.upcase(x) && String.upcase(x) != String.downcase(x) end
    question? = fn x -> String.ends_with?(x, "?") end
    cond do
      str === "" -> IO.puts "Yo"
      upcase?.(str) && question?.(str) -> IO.puts "Only the weak shout."
      upcase?.(str) -> IO.puts "Shut up."
      question?.(str) -> IO.puts "Eurofootball matches haven't gone out."
      true-> IO.puts "K"
    end
  end

#3.
  def measure_string(str) do
    if (String.length(str) > 9) do
      "long string"
    else
      "short string"
    end
  end

#4.
  def compare_strings(a, b) do
    cond do
      String.length(a) < String.length(b) -> IO.puts "The second string is longer"
      String.length(a) > String.length(b) -> IO.puts "The first string is longer"
      String.length(a) == String.length(b) -> IO.puts "Both strings are of equal length"

    end
  end

#5.
  def list_to_str(x) do
    case (x) do
      ([_h|_t]) -> Enum.join(x, ", ")
      _-> ""

    end
  end

#6.
  def parameters(a, b) do
    cond do
      a == 3 || b > 1 -> b
      a > 4 -> "ok"
    end
  end

#7.
  def tuple_parameters(x) do
    case (x) do
      ({_a, b, _c}) when b > 1 -> b
      ({a, b}) when a == 3 -> b
      ({a}) when a > 4 -> a
    end
  end

#8.
  def ex8({a, b, c}) do
    if a > b do
      a
    else
      b + c
    end
  end

end
