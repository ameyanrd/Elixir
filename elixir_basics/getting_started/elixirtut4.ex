defmodule M do
    def main do
        do_stuff()
    end
    def do_stuff do
        age = 16
        # ----- DECISION MAKING -----
        # If and Else
        if age>=18 do
            IO.puts "Can vote"
        else 
            IO.puts "Can't vote"
        end

        # Unless
        unless age === 18 do
            IO.puts "You are not 18"
        else 
            IO. puts "You are 18"
        end

        # Cond works like else if
        # it only hits the 1st match
        age = IO.gets("")
        cond do
            age >= 18 -> IO.puts "You can vote"
            age >= 16 -> IO.puts "You can drive"
            age >= 14 -> IO.puts "You can wait"
            true -> IO.puts "Default"
        end
        # Case works like switch
         case 2 do
            1 -> IO.puts "Entered 1"
            2 -> IO.puts "Entered 2"
            _ -> IO.puts "Default"
        end
        # Ternary operator
        IO.puts "Ternary : #{if age >= 18, do: "Can Vote", else: "Can't Vote"}"
    end
end
