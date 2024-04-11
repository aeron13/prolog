insert_at(L, 0, E, [E|L]) :- !.

insert_at([H|T], K, E, [H|L1]) :-
    K1 is K - 1,
    insert_at(T, K1, E, L1).