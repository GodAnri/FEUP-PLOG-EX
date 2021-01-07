% cargo(Cargo, Funcionario) -> Funcionario tem o cargo Cargo.
cargo(tecnico, rogerio).
cargo(tecnico, ivone).
cargo(engenheiro, daniel).
cargo(engenheiro, isabel).
cargo(engenheiro, oscar). 
cargo(engenheiro, tomas).
cargo(engenheiro, ana).
cargo(supervisor, luis).
cargo(supervisor_chefe, sonia).
cargo(secretaria_exec, laura).
cargo(diretor, santiago).

% chefiado_por(Cargo1, Cargo2) -> pessoas com Cargo1 são chefiados por Cargo2.
chefiado_por(tecnico, engenheiro).
chefiado_por(engenheiro, supervisor).
chefiado_por(analista, supervisor).
chefiado_por(supervisor, supervisor_chefe).
chefiado_por(supervisor_chefe, director).
chefiado_por(secretaria_exec, director). 

% a) Qual cargo é o chefe dos chefes dos técnicos?
% X = engenheiro, Y = supervisor.
% b) A Ivone chefia os técnicos e há alguém com um cargo?
% no.
% c) Existe algum supervisor?
% X = luis.
% d) Que cargo é chefiado por um supervisor ou por um supervisor chefe e existe alguém com esse cargo?
% J = engenheiro, P = daniel.
% e) Que cargo é chefiado pelo director, para além do cargo da Carolina?
% P = supervisor_chefe.