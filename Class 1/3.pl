% livro(A) -> A é um livro
livro('Os Maias').
livro('Harry Potter').
livro('A Mensagem').

% autor(A) -> A é um autor
autor('Eca de Queiroz').
autor('J.K.Rowling').

% escreveu(A, B) -> o autor A escreveu o livro B
escreveu('Eca de Queiroz', 'Os Maias').
escreveu('Eca de Queiroz', 'A Mensagem').
escreveu('J.K.Rowling', 'Harry Potter').

% nacionalidade(A, B) -> o autor A tem a nacionalidade B
nacionalidade('Eca de Queiroz', 'portugues').
nacionalidade('J.K.Rowling', 'ingles').

% tipo(A, B) -> o livro A é do tipo B
tipo('Harry Potter', 'ficcao').
tipo('A Mensagem', 'ficcao').
tipo('Os Maias', 'romance').

% ?- escreveu(X, 'Os Maias').
% ?- autor(X), livro(Y), escreveu(X,Y), tipo(Y,'romance'), nacionalidade(X,'portugues').
% ?- autor(X), livro(Y), escreveu(X,Y), livro(Z), escreveu(X,Z), tipo(Y,'ficcao'), tipo(Z,A), A\='ficcao'.