defmodule Exercises do
  #1.
    # def con([_h|_t] = params) do
    #   rec_con(params, "")
    # end

    # defp rec_con([], result) do
    #   result
    # end
    # defp rec_con([h|t], result) do
    #   rec_con(t, result <> h)
    # end

    def con([]), do: ""
    def con([h|t]) do
      h <> con(t)
    end

  #2.
    # def calc([_h|_t] = params) do
    #   rec_calc(params, 0)
    # end

    # defp rec_calc([], sum) do
    #   sum
    # end
    # defp rec_calc([h|t], sum) do
    #   rec_calc(t, sum + h)
    # end

    def calc([]), do: 0
    def calc([h|t]) do
      h + calc(t)
    end

  #3.
    # def fac(n) do
    #   rec_fac(n-1, n)
    # end

    # defp rec_fac(1, sum) do
    #   sum
    # end
    # defp rec_fac(n, sum) do
    #   rec_fac(n-1, sum * n)
    # end

    def fac(1), do: 1
    def fac(n) do
      n * fac(n-1)
    end
  end
