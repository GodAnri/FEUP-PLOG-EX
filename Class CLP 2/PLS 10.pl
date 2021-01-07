:- use_module(library(clpfd)).

reunion :-
    Organizers = [Armivisti, Baratin, Compromis, ArmivistiBaratin, ArmivistiCompromis, BaratinCompromis, Three],
    domain(Organizers, 0, 135),
    Armivisti + ArmivistiBaratin + ArmivistiCompromis + Three #= 130,
    Baratin + ArmivistiBaratin + BaratinCompromis + Three #= 135,
    Compromis + ArmivistiCompromis + BaratinCompromis + Three #= 65,
    Three #= 30,
    Armivisti + Baratin + Compromis + ArmivistiBaratin + ArmivistiCompromis + BaratinCompromis + Three #= 200,
    labeling([], Organizers),
    Sum is Armivisti + Baratin + Compromis,
    write(Sum).