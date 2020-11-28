%participant(Id,Age,Performance)
participant(1234, 17, 'Pé coxinho').
participant(3423, 21, 'Programar com os pés').
participant(3788, 20, 'Sing a Bit').
participant(4865, 22, 'Pontes de esparguete').
participant(8937, 19, 'Pontes de pen-drives').
participant(2564, 20, 'Moodle hack').

%performance(Id,Times)
performance(1234,[120,120,120,120]).
performance(3423,[32,120,45,120]).
performance(3788,[110,2,6,43]).
performance(4865,[120,120,110,120]).
performance(8937,[97,101,105,110]).

buttonclicked([]).
buttonclicked([H | T]) :-
    H =\= 120,
    buttonclicked(T).

madeitthrough(Participant) :-
    performance(Participant, L),
    \+buttonclicked(L).

elementN(1, [H], H).
elementN(1, [H | _], H).
elementN(N, [_ | L], R) :-
    N_ is N - 1,
    elementN(N_, L, R).

total([], 0).
total([H | L], Total) :-
    total(L, NextTotal),
    Total is H + NextTotal.

juriTimes(Participants, JuriMember, Times, Total) :-
    juriTime(Participants, JuriMember, Times),
    total(Times, Total).

juriTime([], _, []).
juriTime([Participant | T], JuriMember, Times) :-
    performance(Participant, JuriTimes),
    elementN(JuriMember, JuriTimes, Time),
    juriTime(T, JuriMember, NextTimes),
    append([Time], NextTimes, Times).

performance_times(N, P, R) :-
    performance(Part, Times),
    elementN(N, Times, T),
    write(P),
    \+member(Part, P),
    append(P, [Part], P_),
    append(R, [T], R_),
    performance_times(N, P_, R_).

timesclicked([], 0).
timesclicked([H | T], Clicks) :-
    timesclicked(T, Num),
    H == 120,
    Clicks is Num + 1.
timesclicked([_ | T], Clicks) :-
    timesclicked(T, Clicks).

patientJuri(N) :-
    performance_times(N, L),
    write(L),
    nl,
    juriTimes(L, N, Times, _),
    write(Times),
    nl,
    timesclicked(Times, Clicks),
    write(Clicks),
    nl,
    Clicks > 2.
    