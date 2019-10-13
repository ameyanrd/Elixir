defmodule M do
    def main do
        do_stuff()
    end
    # recursion
    def do_stuff do
        IO.puts "Factorial of 3 : #{factorial(3)}"
    end

    def factorial(n) do
        if n<=1 do
            1
        else
            result = n * factorial(n-1)
            result
        end

    end
end
