-module(add).
-export([main/0,factorial/1]).

main() ->
    io:fwrite("Hello World\n").
    
factorial(0) ->
    1;
factorial(x) when x > 0 ->
    x * factorial(x-1).
