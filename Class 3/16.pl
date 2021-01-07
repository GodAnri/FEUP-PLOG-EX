misterio([],[]).
misterio([X],[X]).
misterio([X,Y|L],[X,censurado|M]):- misterio(L,M). 

% a) misterio(Lista, ListaCensurada) -> substitui a segunda palavra de cada par de Lista por censurado e coloca em ListaCensurada.

% b) Necessita de duas condições de base porque lê dois elementos de cada vez, e a lista pode ter tamanho par (primeira condição)
% ou ímpar (segunda condição).