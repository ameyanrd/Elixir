defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        # ----- MATH -----
        IO.puts "5 + 4 = #{5+4}"
        IO.puts "5 - 4 = #{5-4}"
        IO.puts "5 * 4 = #{5*4}"
        IO.puts "5 / 4 = #{5/4}"
        IO.puts "5 div 4 = #{div(5,4)}"
        IO.puts "5 rem 4 = #{rem(5,4)}"
        # Logical operators
        marks = 88
        IO.puts "AA : #{(marks<=100) and (marks>90)}"
        IO.puts "Prize: #{(marks<=100) or (marks>90)}"
        IO.puts not true
    end
end
