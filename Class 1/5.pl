% pessoa(A) -> A é uma pessoa
pessoa('Ana').
pessoa('Joao').
pessoa('Maria').

% moradia(A) -> A é um tipo de moradia
moradia('casa').
moradia('apartamento').

% mora_em(A,B) -> a pessoa A mora em B
mora_em('Joao','casa').
mora_em('Ana','apartamento').
mora_em('Maria','casa').

% animal(A) -> A é um animal
animal('cao').
animal('gato').
animal('tigre').

% jogo(A) -> A é um jogo
jogo('xadrez').
jogo('damas').

% desporto(A) -> A é um desporto
desporto('tenis').
desporto('natacao').

% genero(A, B) -> A é do género B
genero('Joao','homem').
genero('Ana','mulher').
genero('Maria','homem').

% gosta_de(A, B) -> a pessoa A gosta de B
gosta_de('Ana', 'gato').
gosta_de('Ana', 'tigre').
gosta_de('Ana', 'tenis').
gosta_de('Joao', 'cao').
gosta_de('Joao', 'xadrez').
gosta_de('Joao', 'tenis').
gosta_de('Maria', 'cao').
gosta_de('Maria', 'damas').
gosta_de('Maria', 'natacao').

% ?- mora_em(X, 'apartamento'), gosta_de(X, Y), animal(Y). 
% ?- mora_em('Joao','casa'), mora_em('Maria','casa'), gosta_de('Joao',X), desporto(X), gosta_de('Maria',Y), desporto(Y).
% ?- gosta_de(X,Y), gosta_de(X,Z), jogo(Y), desporto(Z).
% ?- genero(X,'mulher'), gosta_de(X,'tenis'), gosta_de(X,'tigre').