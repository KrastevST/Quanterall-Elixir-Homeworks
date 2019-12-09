defmodule Checker do
  require Printer, as: P

  def perform(a, sign, b) do
    cond do
      (is_integer(a) && is_integer(b)) || (is_float(a) && is_float(b)) ->
        case (sign) do
           "+"-> P.print_sum(a, b)
           "-"-> P.print_difference(a, b)
           "*"-> P.print_product(a, b)
           "/"-> P.print_quotient(a, b)
        end
      (is_binary(a) && is_binary(b) && sign == "+") -> P.print_concatenation(a, b)
    end
  end
end
