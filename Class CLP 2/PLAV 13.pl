paulino(Times) :-
    Times = [WakeUp, TakeBus1, StartWork, TakeBus2, TurnTVOn, FallASleep],
    domain(Times, 1, 24),
    WakeUp #>= 6,
    TakeBus1 #= WakeUp + 1,
    StartWork #>= TakeBus1 + 1,
    TakeBus2 #>= StartWork + 8,
    TurnTVOn #>= TakeBus2 + 1,
    FallASleep #>= TurnTVOn + 3.