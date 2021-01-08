:- use_module(library(clpfd)).
:- use_module(library(lists)).
:- use_module(library(between)).

create_task(Task, Machine, task(0,1,1,Task,Machine)).
create_machine(Machine, Index, machine(Index,Machine)).

corta(Pranchas, Prateleiras, PranchasSelecionadas) :-
    length(Pranchas, NPranchas),
    length(Prateleiras, NPrateleiras),
    length(PranchasSelecionadas, NPrateleiras),
    domain(PranchasSelecionadas, 1, NPranchas),

    length(Tasks, NPrateleiras),
    length(Machines, NPranchas),

    findall(Index, between(1, NPranchas, Index), Indexes),

    maplist(create_task, Prateleiras, PranchasSelecionadas, Tasks),
    maplist(create_machine, Pranchas, Indexes, Machines),

    cumulatives(Tasks, Machines, [bound(upper)]),
    labeling([], PranchasSelecionadas).