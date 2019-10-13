# ELIXIR BASICS

## Basic types:
1. / operator returns a float.
2. div(10,3) and rem(10,3) funtion returns int.
3. 0b, 0o, and 0x represent binary, octal and hexadecimal.
4. 1.0e-10 is float number in scientific notation. Float has IEEE 64 bit double precision.
5. round(4.6) will round off to nearest int and trunc(4.6) will take the integer part.
6. Identifying functions: iex shell provides h function for documemtation. Also a function is defined by it's name and argument number. Eg. h round/1 gives it's doc. round/1 and round/2 are different functions.
7. is\_boolean(1) returns false. is\_integer/1, is\_float/1 and is\_number/1 are other functions returning boolean.
8. Atoms: It is a constant whose value is equal to it's name. Eg. :apple
9. Booleans are also atoms. true==:true returns true, is\_atom(false) returns true and is\_boolean(:false) reyurns true.
10. Strings: Eg."hello". String interpolation is supported, e.g. "hello #{:world}".
11. IO.puts returns :ok atom after printing it's argument.
12. Strings are represented in binary, so is\_binary("hello") returns true and byte\_size("hello") returns 5.
13. String.length("hello") and String.upcase("hello") returns 5 and HELLO resply.
14. Anonymous functions: Eg. add = fn a, b -> a + b end. Then use add.(1,2). ```fn``` and ```end``` are used as delimiters. This anonymous function is stored in variable add. Dot(.) operator is used to call this add/2 function.
15. A variable is always passed by value.
16. List can contain any datatype of items. ++/2 and --/2 are operators that can be used to concatenate and remove items resply.
17. [104, 101, 108, 108, 111] gives 'hello' (numbers in the list are considered as ascii). "hello"=='hello' returns false ("hello" is a string).
