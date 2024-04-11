split([], _, [], []).

split(L, 0, [], L) :-
    !.

split([H|T], K, [H|L1], L2) :-
    K > 0,
    K1 is K - 1,
    split(T, K1, L1, L2).