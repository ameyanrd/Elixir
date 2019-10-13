defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        # ----- EXCEPTION HANDLING -----
        # Allows us to handle errors
     
        err = try do
          5 / 0
        rescue
          ArithmeticError -> "Can't Divide by Zero"
    end
 
    IO.puts err
    end

    def sum([]), do: 0

    def sum([h|t]), do: h + sum(t)

    def loop(0,_), do: nil

    def loop(max, min) do
        if max < min do
            loop(0, min)
        else
            IO.puts "Num : #{max}"
            loop(max-1,min)
        end
    end
end
