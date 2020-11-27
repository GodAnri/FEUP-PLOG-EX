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

solution(Init, Fin, SOL) :-
    prof(Init, Fin, [], SOL).

prof(Init, Fin, PATH, SOL) :-
    Init == Fin,
    reverse(PATH, SOL).

prof(path, init, fin, afterpath) :-
    ligado(init, next),
    \+ member(init, path),
    prof([init | path], next, fin, afterpath).
    