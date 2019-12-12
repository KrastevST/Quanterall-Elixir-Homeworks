defmodule Homework.Operations do
@moduledoc """
A set of suboptimal functions.
"""
@spec add(number, number) :: (number)
@spec multiply(number, number) :: (number)
@spec subtract(number, number) :: (number)
@spec divide(number, number) :: (number)
@spec concat(String.t, String.t) :: (String.t)

  @doc """
  Suboptimal addition.
  """
  def add(a, b), do: a + b
  @doc """
  Suboptimal multiplication.
  """
  def multiply(a, b), do: a * b
  @doc """
  Suboptimal subtraction.
  """
  def subtract(a, b), do: a - b
  @doc """
  Suboptimal division.
  """
  def divide(a, b), do: a / b
  @doc """
  Suboptimal concatenation.
  """
  def concat(a, b), do: a <> b
end


# def add(x, y) do
#   with{:ok, x} <- Check.num(x)
#   do x + y
# else
#   {:error, msg} -> msg
# end
