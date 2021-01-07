:- use_module(library(clpfd)).

cars :-
    ColorCaption = ['Yellow', 'Green', 'Blue', 'Black'],
    Color = [Yellow, Green, Blue, Black],
    Size = [Biggest, Big, Medium, Small],
    domain(Color, 0, 3),
    domain(Size, 0, 3),
    all_distinct(Color),
    all_distinct(Size),
    Green #= Small,
    Blue #\= 0,
    Blue #\= 3,
    Green #> Blue,
    Yellow #> Black,
    Before #= Blue - 1,
    After #= Blue + 1,
    nth0(SizeBefore, Size, Before),
    nth0(SizeAfter, Size, After),
    SizeBefore #< SizeAfter,
    labeling([], Color),
    nth0(ColorIndex, Color, 0),
    nth0(ColorIndex, ColorCaption, ColorFirst),
    write(ColorFirst).