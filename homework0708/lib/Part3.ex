defmodule Printer do
  import Homework.Operations, only: :functions

  def print_sum(a, b), do: IO.puts "variable: integer\noperation: addition\nresult: #{add(a, b)}"
  def print_difference(a, b), do: IO.puts "variable: integer\noperation: subtraction\nresult: #{subtract(a, b)}"
  def print_product(a, b), do: IO.puts "variable: integer\noperation: multiplication\nresult: #{multiply(a, b)}"
  def print_quotient(a, b), do: IO.puts "variable: integer\noperation: division\nresult: #{divide(a, b)}"
  def print_concatenation(a, b), do: IO.puts "variable: string\noperation: concatenation\nresult: #{concat(a, b)}"
end
