remove_at([_|T], 0, T) :- !.

remove_at([H|T], K, [H|X]) :-
    K1 is K - 1,
    remove_at(T, K1, X).