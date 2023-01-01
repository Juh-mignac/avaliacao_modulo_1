-- EX 03 - LETRA C

select 
P.pessoa_id, P.nome, P.cpf, P.idade, P.sexo,
E.tipo, E.logradouro, E.numero, E.complemento, E.cep, E.cidade, E.estado
from pessoa AS P 
LEFT JOIN endereco AS E
ON P.pessoa_id = E.pessoa_id;

