% aluno(A, C) :- A é aluno da cadeira C.
aluno(joao, paradigmas).
aluno(maria, paradigmas).
aluno(joel, lab2).
aluno(joel, estruturas).

% frequenta(A, F) :- A frequenta a faculdade F.
frequenta(joao, feup).
frequenta(maria, feup).
frequenta(joel, ist).

% professor(P, C) :- P é professor da cadeira C.
professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).

% funcionario(P, F) :- P é funcionário da faculdade F.
funcionario(pedro, ist).
funcionario(ana_paula, feup).
funcionario(carlos, feup).

% a) alunoDe(A, P) :- A é aluno do professor P.
alunoDe(A, P) :-
    aluno(A, C),
    frequenta(A, F),
    professor(P, C),
    funcionario(P, F).

% b) pertence(Pessoa, F) :- P pertence à faculdade F.
pertence(A, F) :-
    frequenta(A, F).
pertence(P, F) :-
    funcionario(P, F).

% c) colegas(X, Y) :- X é colega de Y.
colegas(X, Y) :-
    frequenta(X, F),
    frequenta(Y, F),
    X \= Y.
colegas(X, Y) :-
    aluno(X, C),
    aluno(Y, C),
    X \= Y.
colegas(X, Y) :-
    funcionario(X, F),
    funcionario(Y, F),
    X \= Y.