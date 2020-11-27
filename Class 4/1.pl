:- use_module(library(lists)).

ligado(a,b).
ligado(a,c).
ligado(b,d).
ligado(b,e).
ligado(b,f).
ligado(c,g).
ligado(d,h).
ligado(d,i).
ligado(f,i).
ligado(f,j).
ligado(f,k).
ligado(g,l).
ligado(g,m).
ligado(k,n).
ligado(l,o).
ligado(i,f).

% a)
caminho_prof(I, F, Sol) :-
    prof(I, F, [], Sol).
prof(I, I, Caminho, Sol) :-
    rev([I | Caminho], Sol).
prof(I, F, Caminho, Sol) :-
    ligado(I, Prox),
    \+append(_, [Prox | _], Caminho),
    prof(Prox, F, [I | Caminho], Sol).