slice(_, _, 0, []) :- !.

slice([H|T], 1, M, [H|T1]) :-
    M1 is M - 1,
    slice(T, 1, M1, T1),
    !.
    
slice([_|T], N, M, X) :-
    N1 is N - 1,
    M1 is M - 1,
    slice(T, N1, M1, X).