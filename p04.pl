find_length([_], 1).

find_length([_], X) :-
    nonvar(X),
    write(X).

find_length([_|T], X) :-
    nonvar(X),
    X1 is X + 1,
    find_length(T, X1).

find_length([_|T], X) :-
    var(X),
    find_length(T, 2).