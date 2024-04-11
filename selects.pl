row(X, M, Row) :-
    nth1(X, M, Row).

col(Y, [Row], [E]) :-
    nth1(Y, Row, E),
    !.

col(Y, [Row|T], [E|Col]) :-
    col(Y, T, Col),
    nth1(Y, Row, E).

list_select(1, 1, [H|_], [H]) :- !.

list_select(1, E, [H|T], [H|R]) :-
    E1 is E - 1,
    list_select(1, E1, T, R),
    !.

list_select(S, E, [_|T], R) :-
    S < E,
    S1 is S - 1,
    E1 is E - 1,
    list_select(S1, E1, T, R).

matrix_select(X1, X2, Y2, Y2, M, List) :- 
    row(Y2, M, Row),
    list_select(X1, X2, Row, List),
    !.

matrix_select(X1, X2, Y1, Y2, M, R) :-
    Y1 < Y2,
    Y1n is Y1 + 1,
    matrix_select(X1, X2, Y1n, Y2, M, Res),
    row(Y1, M, Row),
    list_select(X1, X2, Row, List),
    append(List, Res, R).






    sudoku(M) :-
        M = [R1, R2, R3],
        length(R1, 3),
        length(R2, 3),
        length(R3, 3),
        range(1, 3, L),
        rand_list(L, R1),
        rand_list(L, R2),
        rand_list(L, R3),
        col(1, M, C1),
        col(2, M, C2),
        col(2, M, C3),
        check_list(C1, L),
        check_list(C2, L),
        check_list(C3, L),
        !.
    
    sudoku(M) :-
        sudoku(M).