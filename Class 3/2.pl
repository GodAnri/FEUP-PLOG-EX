% a) ?- lista([a,[b],c,[d]]) = lista([_,[X|X]]).
% no.

% b) ?- lista([[a],[b],C])=lista([C,B,[a]]).
% C = [a], B = [b].

% c) ?- lista([c,c,c])=lista([X|[X|_]]).
% X = c.

% d) ?- lista([a,[b,c]])=lista([A,B,C]).
% no.

% e) ?- [joao,gosta,peixe]=[X,Y,Z].
% X = joao, Y = gosta, Z = peixe.

% f) ?- [gato]= lista([X|Y]).
% no.

% g) ?- [vale,dos,sinos]=[sinos,X,Y].
% no.

% h) ?- [branco,Q]=[P,cavalo].
% P = branco, Q = cavalo.

% i) ?- [1,2,3,4,5,6,7]=[X,Y,Z|D]. 
% X = 1, Y = 2, Z = 3, D = [4, 5, 6, 7].