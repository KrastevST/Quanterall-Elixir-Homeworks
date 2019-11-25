defmodule Exercises do
#1.
  def ex1(%{first_name: fname, second_name: sname, age: _age}) do
    "Hello, #{fname} #{sname}"
  end

#2.
  def length_of_tuple({_a}), do: 1
  def length_of_tuple({_a,_b}), do: 2
  def length_of_tuple({_a,_b,_c}), do: 3
  def length_of_tuple({_a,_b,_c,_d}), do: 4
  def length_of_tuple(_), do: "Shouldn't you use a list"

#3.
  Enum.filter([1994, 600, 1965, 0, 1, 2019, 2008, 1921, 1936, 1414, 2000, 1992, 2004], fn x -> x > 1999 && x < 2100 end)

#4.
  def ex4(nums) do
    select_even(nums)
    |> remove_divisible_by_3
    |> multiply_every_second_by_100
  end

  defp select_even(nums) do
    Enum.filter(nums, fn x -> rem(x, 2) == 0 && x < 100 end)
  end
  defp remove_divisible_by_3(nums) do
    Enum.filter(nums, fn x -> rem(x, 3) != 0 end)
  end
  defp multiply_every_second_by_100(nums) do
    temp = [0 | nums]
    [_ | modified] = Enum.map_every(temp, 2, fn x -> x * 100 end)
    modified
  end

#5.
  def remove_underaged(people_list) do
    Enum.reject(people_list, fn p -> p.age < 18 end)
  end
end
