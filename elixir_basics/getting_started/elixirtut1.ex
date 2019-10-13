defmodule M do
    def main do
        name = IO.gets("What is your name? ") |> String.trim
        IO.puts "Hello #{name}"
        data_stuff()
    end
    def data_stuff do
        my_int = 435
        my_float = 3.1
        my_atom = :"elixir basics"
        IO.puts "Integer #{is_integer(my_int)}"
        IO.puts "Float #{is_float(my_float)}"
        IO.puts "Atom #{is_atom(my_atom)}"
        IO.puts "my_atom = #{my_atom}"
        one_to_10 = 1 .. 10 # Defining a Range
        IO.inspect one_to_10 # It helps to see the internal representation of the value.
    end
end
