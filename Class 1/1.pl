male('Aldo Burrows').
male('Michael Scofield').
male('Lincoln Burrows').
male('LJ Burrows').

female('Christina Rose Scofield').
female('Sara Tancredi').
female('Lisa Rix').
female('Ella Scofield').

% parent(A,B) -> A is a parent of B
parent('Aldo Burrows', 'Lincoln Burrows').
parent('Aldo Burrows', 'Michael Scofield').
parent('Christina Rose Scofield', 'Lincoln Burrows').
parent('Christina Rose Scofield', 'Michael Scofield').
parent('Lincoln Burrows', 'LJ Burrows').
parent('Lisa Rix', 'LJ Burrows').
parent('Michael Scofield', 'Ella Scofield').
parent('Sara Tancredi', 'Ella Scofield').

% ? - parent(X,'Michael Scofield').
% ? - parent('Aldo Burrows', Y).