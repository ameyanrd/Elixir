defmodule M do
    def main do
        data_stuff()
    end
    def data_stuff do
    my_str = "My String"
    IO.puts "Length : #{String.length(my_str)}"
    longer_str = my_str <> " " <> "is longer"
    # Comparison functions
    IO.puts "Equal : #{"Egg" === "egg"}" # === is used to check if value and data_type both are equal.
    IO.puts "Equal : #{1 == 1.0}" # == only compares the value and not the data_type.
    IO.puts "Equal : #{1 === 1.0}"
    IO.puts "4!=4.0 : #{4!=4.0}"
    IO.puts "4!==4.0 : #{4!==4.0}"
    IO.puts "5 > 4 : #{5 > 4}"
    # String functions
    IO.puts "My ? #{String.contains?(longer_str, "My")}"
    IO.puts "First : #{String.first(my_str)}"
    IO.puts "Index 4: #{String.at(my_str, 4)}" # 0 indexing
    IO.puts "Substring : #{String.slice(longer_str,3,7)}" # string name, starting index and length of the substring
    
    IO.inspect String.split(longer_str," ") # split when " " comes
    
    IO.puts "Reverse: #{String.reverse(longer_str)}"
    IO.puts "Upper Case: #{String.upcase(longer_str)}"
    IO.puts "Lower Case: #{String.downcase(longer_str)}"
    IO.puts "Capitalize first letter: #{String.capitalize(longer_str)}"

    4*9 |> IO.puts # We are piping 4*9 to IO.puts function
    end
end
