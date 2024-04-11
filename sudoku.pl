:- use_rendering(sudoku).

:- use_module(library(clpfd)).

sudoku(Rows) :-
    length(Rows, 9),
    maplist(same_length(Rows), Rows),
    append(Rows, Vals), Vals ins 1..9,
    maplist(all_distinct, Rows),
    transpose(Rows, Cols),
    maplist(all_distinct, Cols),  
    check_squares(Rows),
    !.

check_squares([[A,B,C],[D,E,F],[G,H,I]]) :-
    all_distinct([A,B,C,D,E,F,G,H,I]),
    !.

check_squares([[A, B, C|T1], [D, E, F|T2], [G, H, I|T3]]) :-
    Sm = [T1, T2, T3],
    check_squares(Sm),
    all_distinct([A,B,C,D,E,F,G,H,I]).
             
check_squares([R1, R2, R3|Rest]) :-
	check_squares(Rest),
    check_squares([R1, R2, R3]).
