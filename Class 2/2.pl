% ?- a(X,2).
% X = A

% ?- b(X,Kalamazoo).
% no

% ?- c(X,b3).
% X = a3

% ?- c(X,Y).
% X = a1; Y = b1

% ?- d(X,Y).
% no

a(a1,1).
a(a,2).
a(a3,n).
b(1,b1).
b(2,b).
b(n,b3).
c(X,Y) :- a(X,N), b(N,Y).
d(X,Y) :- a(X,N), b(Y,N).
d(X,Y) :- a(N,X), b(N,Y). 