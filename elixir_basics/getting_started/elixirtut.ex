defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
       # ----- CONCURRENCY -----
        # Running multiple blocks of code at once
        # Calling spawn starts a new process that
        # runs the code specified at an undefined
        # time
     
        # Spawn returns a Process ID (PID)
        spawn(fn() -> loop(50, 1) end)
        spawn(fn() -> loop(100, 50) end) 
        # We can send messgaes between
        # processes

        # Send a message to this process
        # and receive it
        send(self(), {:french, "Bob"})

        receive do
          {:german, name} -> IO.puts "Guten tag #{name}"
          {:french, name} -> IO.puts "Bonjour #{name}"
          {:english, name} -> IO.puts "Hello #{name}"

        # If there is no matching message you can issue
        # a timeout like I did for 500 milliseconds
        after
          500 -> IO.puts "Times up"
        end
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
