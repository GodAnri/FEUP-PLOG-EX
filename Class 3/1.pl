% ?- [a|[b,c,d]] = [a,b,c,d].
% yes

% ?- [a|b,c,d] = [a,b,c,d].
% no

% ?- [H|T] = [apple, broccoli, refrigerator].
% H = apple, T = [broccoli, refrigerator]

% ?- [H|T] = [a, b, c, d, e].
% H = a, T = [b, c, d, e]

% ?- [H|T] = [apples, bananas].
% H = apples, T = [bananas]

% ?- [H|T] = [a, [b,c,d]].
% H = a, T = [[b,c,d]]

% ?- [H|T] = [apples].
% H = apples, T = []

% ?- [H|T] = [].
% no

% ?- [One, Two | T] = [apple, sprouts, fridge, milk].
% One = apple, Two = sprouts, T = [fridge, milk]

% ?- [X,Y|T] = [a|Z].
% X = a, Z = [Y | T]

% ?- [H|T] = [apple, Z].
% H = apple, T = [Z]

% ?- [a|[b|[c|[d|[]]]]] = [a,b,c,d].
% yes