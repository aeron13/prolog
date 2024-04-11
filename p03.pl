findKElement([X | _], 1, X).
findKElement([_ | T], K, X) :-
    K > 0,
    K1 is K - 1,
    findKElement(T, K1, X).