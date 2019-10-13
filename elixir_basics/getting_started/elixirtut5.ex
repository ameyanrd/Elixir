defmodule M do
    def main do
        do_stuff()
    end 
    def do_stuff do
        # ----- TUPLES -----
        # Tuples normally have 2 to 4 values
        # They can hold any value
        # They aren't for enumerating, or
        # cycling through like lists
        # They are for pattern matching

        # Create a tuple
        my_stats = {175, 6.25, :Derek}
        IO.puts "Tuple #{is_tuple(my_stats)}"

        # You can append values
        my_stats2 = Tuple.append(my_stats, 42)

        # Retrieve values by index
        IO.puts "Age #{elem(my_stats2, 3)}"

        # Get tuple size
        IO.puts "Size #{tuple_size(my_stats2)}"

        # Delete an index
        my_stats3 = Tuple.delete_at(my_stats2, 0)

        # Insert at an index
        my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)

        # Create a tuple with the same values
        # duplicated a number of times
        many_zeroes = Tuple.duplicate(0, 5)

        # You can use tuples for pattern matching
        {weight, height, name} = {175, 6.25, :Derek}
        IO.puts "Weight : #{weight}"

    end

end
