-module(solver).
-export([main/1, read_puzzle_data/0]).

main(_) ->
    io:fwrite("Solving sudoku puzzle\n"),
    {Board_data, result} = read_puzzle_data().
    
read_puzzle_data() ->
    {ok, Raw_file} = file:read_file("board.txt"),
    Board_data = binary:replace(Raw_file, <<"\n">>, <<"">>, [global]),
    
    case byte_size(Board_data) == 81 of 
        true -> 
            io:fwrite("Board is of correct size.\n"),
            {Board_data, true};

        false ->
            io:fwrite("Board is of incorrect size.\n"),
            {Board_data, false}
    end.
    
            

