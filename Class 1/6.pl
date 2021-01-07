% a)
% passaro(X) -> X é um pássaro
passaro('Tweety').

% peixe(X) -> X é um peixe
peixe('Goldie').

% minhoca(X) -> X é uma minhoca
minhoca('Molie').

% gato(X) -> X é um gato.
gato('Silvester').

% amigo(X, Y) -> X e Y são amigos.
amigo('Me', 'Silvester').

/*
% gostaDe(X, Y) -> X gosta de Y.
gostaDe(X, Y) :-
    passaro(X),
    minhoca(Y).
gostaDe(X, Y) :-
    gato(X),
    peixe(Y).
gostaDe(X, Y) :-
    gato(X),
    passaro(Y).
gostaDe(X, Y) :-
    amigo(X, Y).
gostaDe(X, Y) :-
    amigo(Y, X). 

% come(X, Y) -> X come Y.
come(X, Y) :-
    gostaDe(X, Y).
*/

% b) Não, uma vez que é necessário diferenciar "gostar de X" de "gostar de comer X".
% gostaDe(X, Y) -> X gosta de Y.
gostaDe(X, Y) :-
    amigo(X, Y).
gostaDe(Y, X) :-
    amigo(Y, X).

% come(X, Y) -> X gosta de comer Y.
come(X, Y) :-
    passaro(X),
    minhoca(Y).
come(X, Y) :-
    gato(X),
    peixe(Y).
come(X, Y) :-
    gato(X),
    passaro(Y).