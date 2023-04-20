CREATE TABLE mansoes(
  nome VARCHAR(50) not null,
  endereco VARCHAR(100) not null,
  material VARCHAR(200) not null,
  numero_pk INT not null,
  quartos INT not null,
  tamanho int,
  PRIMARY KEY(numero_pk)
  )
  
CREATE TABLE proprietarios(
  nome VARCHAR(50) not null,
  idade int,
  profissao VARCHAR(80) not null,
  id_pk int,
  numero_mansoes_fk int not null,
  PRIMARY key(id_pk),
  FOREIGN KEY(numero_mansoes_fk) REFERENCES mansoes(numero_pk)
  )
  
 CREATE table funcionarios(
   nome VARCHAR(50) not null,
   idade int,
   email VARCHAR(30) not null,
   telefone int not null,
   especializacao_pk int not null,
   id_proprietario_fk int not null,
   PRIMARY KEY(especializacao_pk),
   FOREIGN KEY(id_proprietario_fk) REFERENCES proprietarios(id_pk)
   )
   
    
   INSERT INTO mansoes (nome, endereco, material, numero_pk, quartos)
   values('Mansion Billie','N ave 57','marmore e pedra',2, 8),
   		 ('Mini Mansion Eilish Family','California, Los Angeles','woodframe e drywall',1, 2)
   
   insert into proprietarios (nome, profissao, id_pk, numero_mansoes_fk)
   values('Billie Eilish','cantora, compositora, atriz, dancarina e ativista',1000,2),
   		 ('Patrick OConnel', 'músico', 524,1)
  
   INSERT into funcionarios(nome, email, telefone, especializacao_pk, id_proprietario_fk)
   VALUES('Jesse Rutherford', 'jessechato@gmail.com',128453, 1, 1000),
   		 ('Finneas','finneasirmaoperfeito@gmail.com',1543512, 8, 524),
		 ('Maggie Baird','maggiemelhormae@gmail.com',3120321, 5, 524)


	SELECT * FROM mansoes
	SELECT * FROM proprietarios
	SELECT * FROM funcionarios