defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        IO.puts "Sum : #{sum([1,2,3])}"
        # Loops in elixir
       loop(5,1)
        # Enum
        IO.puts "Even List : #{Enum.all?([1,2,3],
        fn(n) -> rem(n,2) == 0 end)}"
        IO.puts "Even List : #{Enum.any?([1,2,3],
        fn(n) -> rem(n,2) == 0 end)}"
        Enum.each([1,2,3], fn(n) -> IO.puts n end)

        dbl_list = Enum.map([1,2,3], fn(n) -> n*2 end)
        IO.inspect dbl_list    

        sum_vals = Enum.reduce([1,2,3], fn(n,sum) -> n+sum end)

        IO.puts "Sum : #{sum_vals}"
        # Get rid of any duplicates
        IO.inspect Enum.uniq([1,2,2])


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
