% find if an element is in the array

findElement([K | _], K) :-
    !.
findElement(L, K) :-
    L = [_ | T],
    findElement(T, K).