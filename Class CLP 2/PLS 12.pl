:- use_module(library(clpfd)).

books :-
    Type = [DFH, DFL, DIH, DIL, CFH, CFL, CIH, CIL],
    domain(Type, 0, 500),
    DFH + DIH + CFH + CIH #= 52,
    DIH + CIH #= 27,
    DFH + DFL + DIH + DIL #= 34,
    DFH #= 3,
    DIH + DIL + CIH + CIL #= 46,
    CIH + CIL #= 23,
    DFL + CFL #= 20,
    CFL + CIL #= 31,
    labeling([], Type),
    Sum is DFH + DFL + DIH + DIL + CFH + CFL + CIH + CIL,
    write(Sum).