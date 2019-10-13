defmodule M do
    def main do
        do_stuff()
    end
    def do_stuff do 
        # ----- LISTS -----
        # Lists contain lists of data of any data type
        list1 = [1,2,3]
        list2 = [4,5,6]
     
        # You can combine Lists
        list3 = list1 ++ list2
     
        # You can subtract Lists
        list4 = list3 -- list1
     
        # Verify if an item is in a list
        IO.puts 6 in list4
     
        # Separate the head and tail of list
        [head | tail] = list3
        IO.puts "Head : #{head}"

        IO.write "Tail: " # This doesn't add a new line character
        IO.inspect tail # This will represent tail as a list (internal representation)
        
        IO.inspect [97,98]

        # To insect as as_lists:
        IO.inspect [97,98], charlists: :as_lists
        # elixir printd the last parameter passed to the function as 'ab' again
        
        # To printf each element
        Enum.each tail, fn item ->
            IO.puts item
        end
        words = ["Random", "Words", "in a", "list"]
        Enum.each words, fn word ->
            IO.puts word
        end

        IO.inspect words

        # ------Recursion-------

        display_list(words)

        IO.puts display_list(List.insert_at(words,4,"Yeah"))

        IO.puts List.first(words)
        
        IO.puts List.last(words)
        # You can create lists of key value tuples
        my_stats = [name: "Ameya", age: 18]
    end

    def display_list([word|words]) do
        IO.puts word
        display_list(words)
    end

    def display_list([]), do: nil

end
