remove_at([H|T], 0, H, T) :- !.

remove_at([H|T], K, X, [H|R]) :-
    K1 is K - 1,
    remove_at(T, K1, X, R).


% ?- rand_list([1,2,3,5,6,7], X)
% X = [7, 5, 6, 1, 2, 3]

rand_list([], []) :- !.

rand_list(L, [E|Xs]) :-
    length(L, Le),
    random(0, Le, K),
    remove_at(L, K, E, R),
    rand_list(R, Xs).