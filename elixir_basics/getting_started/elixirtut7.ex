defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        # Maps hold collections of key value pairs
        capitals = %{"Alabama" => "Montgomery",
        "Alaska" => "Juneau", "Arizona" => "Phoenix"}

        # Retrieve values using the key
        IO.puts "Capital of Alaska is #{capitals["Alaska"]}"
        # You can use atoms as keys
        capitals2 = %{alabama: "Montgomery",
        alaska: "Juneau", arizona: "Phoenix"}

        IO.puts "Capital of Arizona is #{capitals2.arizona}"

        # Insert a key / value
        capitals3 = Dict.put_new(capitals, "Arkansas", "Big Rock")
    end

    def display_list([word|words]) do
        IO.puts word
        display_list(words)
    end
    def display_list([]), do: nil
end
