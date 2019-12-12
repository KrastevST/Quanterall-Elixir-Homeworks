defmodule Homework do

#1.
  def solve([a, sign, b]) do
    case (sign) do
      ("+") -> (a + b ) * (a * a - a * b + b * b)
      ("-") -> (a - b) * (a * a + a * b + b * b)
    end
  end

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

#9.
  def update_data(team1, team2, score1, score2) do
    data = %{
      "Red" => %{
        "gk" => {"Jody Reeves", 28, "right", 0},
        "def" => {"Kevin Martinez", 34, "right", 0},
        "mid" => {"Melvin Montgomery", 22, "left", 0},
        "atk" => {"Ramon Stokes", 35, "right", 0}
      },
      "Blue" => %{
        "gk" => {"Boyd Morris", 48, "left", 0},
        "def" => {"Nicholas Thomas", 42, "left", 0},
        "mid" => {"Blake Bradley", 18, "right", 0},
        "atk" => {"Guadalupe Tran", 32, "left", 0}
      },
      "Green" => %{
        "gk" => {"Clayton Love", 22, "left", 0},
        "def" => {"Dennis Rodgers", 25, "left", 0},
        "mid" => {"Rick Mcdaniel", 33, "right", 0},
        "atk" => {"Roosevelt Carson", 20, "left", 0}
      }
    }
    Map.update!(data, team1, &(update_team(&1, score1, score2)))
    |> Map.update!(team2, &(update_team(&1, score2, score1)))
  end

  defp update_team(team, 0, conceded) do
    update_player(team, "gk", -conceded)
  end
  defp update_team(team, 1, conceded) do
    update_player(team, "gk", -conceded)
    |> update_player("atk", 1)
  end
  defp update_team(team, 2, conceded) do
    update_player(team, "gk", -conceded)
    |> update_player("atk", 2)
  end
  defp update_team(team, 3, conceded) do
    update_player(team, "gk", -conceded)
    |> update_player("atk", 2)
    |> update_player("mid", 1)
  end
  defp update_team(team, 4, conceded) do
    update_player(team, "gk", -conceded)
    |> update_player("atk", 2)
    |> update_player("mid", 1)
    |> update_player("def", 1)
  end
  defp update_player(team, player, goals) do
    Map.replace!(team, player, put_elem(Map.fetch!(team, player), 3, goals))
  end
end
