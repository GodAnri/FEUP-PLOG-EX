p(1).
p(2):-!.
p(3).

% a) 1 and 2. (Because when backtracking on the solution X = 2 to change the value of X, it will fail, so it won't test for X = 3)
% b) 1/1, 1/2, 2/1, 2/2.
% c) 1/1, 1/2. (Because when backtracking to change X from 1 to 2, it will fail)