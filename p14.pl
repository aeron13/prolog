duplicate([], []).

duplicate([A], [A,A]) :- !.

duplicate([H|T], X) :-
    duplicate(T, X1),
	X = [H, H|X1].