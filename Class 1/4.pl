% pessoa(A) -> A é uma pessoa
pessoa('Ana').
pessoa('Bruno').
pessoa('Antonio').
pessoa('Barbara').

% comida(A) -> A é uma comida
comida('peru').
comida('frango').
comida('salmao').
comida('solha').

% bebida(A) -> A é uma bebida
bebida('cerveja').
bebida('vinho verde').
bebida('vinho maduro').

% gosta(A, B) -> a pessoa A gosta da comida/bebida B
gosta('Ana', 'vinho verde').
gosta('Bruno', 'vinho verde').

% combina(A, B) -> a bebida A combina com a comida B
combina('vinho verde','salmao').
combina('vinho verde','peru').
combina('vinho maduro','solha').
combina('cerveja','frango').

% casado(A, B) -> A e B são casados
casado('Ana', 'Bruno').
casado('Bruno', 'Ana').

% ?- casado('Ana', 'Bruno'), gosta('Ana', 'vinho verde'), gosta('Bruno', 'vinho verde').
% ?- combina(X, 'salmão').
% ?- combina('vinho verde', X).