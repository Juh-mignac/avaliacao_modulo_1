-- EX 03 - LETRA B

CREATE TABLE pessoa (
	pessoa_id INT PRIMARY KEY not NULL,
	nome VARCHAR(200) NOT NULL,
  	cpf VARCHAR(25) NOT NULL,
  	idade DATE,
  	sexo CHAR(1) NOT NULL
);

CREATE TABLE endereco (
	endereco_id INT PRIMARY KEY not NULL,
	tipo VARCHAR(10) NOT NULL,
  	logradouro VARCHAR(250) NOT NULL,
  	numero VARCHAR(10) NOT NULL,
  	complemento VARCHAR(100),
  	cep NUMERIC NOT NULL,
  	cidade VARCHAR(250) NOT NULL,
  	estado CHAR(2) NOT NULL,
  	pessoa_id INT NOT NULL,
  	CONSTRAINT fk_pessoa
      FOREIGN KEY(pessoa_id) 
	  REFERENCES pessoa(pessoa_id)
);


