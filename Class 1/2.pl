% pilot(A) -> A is a pilot
pilot('Lamb').
pilot('Besenyei').
pilot('Chambliss').
pilot('MacLean').
pilot('Mangold').
pilot('Jones').
pilot('Bonhomme').

% team(A, B) -> Pilot A is on team B
team('Lamb', 'Breitling').
team('Besenyei', 'Red Bull').
team('Chambliss', 'Red Bull').
team('MacLean', 'Mediterranean Racing Team').
team('Mangold', 'Cobra').
team('Jones', 'Matador').
team('Bonhomme', 'Matador').

% plane(A, B) -> Pilot A flies on plane B
plane('Lamb', 'MX2').
plane('Besenyei', 'Edge540').
plane('Chambliss', 'Edge540').
plane('MacLean', 'Edge540').
plane('Mangold', 'Edge540').
plane('Jones', 'Edge540').
plane('Bonhomme', 'Edge540').

% track(A) -> A is a track
track('Istanbul').
track('Budapest').
track('Porto').

% winner(A, B) -> Pilot A won on track B
winner('Jones', 'Porto').
winner('Mangold', 'Budapest').
winner('Mangold', 'Istanbul').

% gates(A, B) -> Track A has B gates
gates('Istanbul', 9).
gates('Budapest', 6).
gates('Porto', 5).

% ?- winner(X, 'Porto').
% ?- winner(X, 'Porto'), team(X, Y).
% ?- winner(X, Y), winner(X, Z), Y@<Z.
% ?- gates(X, Y), Y > 8.
% ?- plane(X, Y), Y\='Edge540'.