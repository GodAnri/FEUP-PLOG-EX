% comprou(X, Y) -> X comprou Y.
comprou(joao, honda).
comprou(joao, uno).

% ano(X, Y) -> X foi comprado no ano Y.
ano(honda, 1997).
ano(uno, 1998).

% valor(X, Y) -> X tem o valor Y.
valor(honda, 20000).
valor(uno, 7000).

% pode_vender(X, Y, Z) -> A pessoa X pode vender o carro Y no ano Z.
pode_vender(Dono, Carro, AnoAtual) :-
    comprou(Dono, Carro),
    ano(Carro, AnoCompra),
    AnoAtual < AnoCompra + 10,
    valor(Carro, Valor),
    Valor < 10000.