CREATE TABLE barracas(
  nome VARCHAR(50) not null,
  endereco VARCHAR(100) not null,
  produtos VARCHAR(200) not null,
  id_pk int not null,
  PRIMARY KEY(id_pk)
  )
  
CREATE TABLE clientes(
  nome VARCHAR(50) not null,
  idade int,
  cpf_pk int not null,
  data_nasc int,
  id_barracas_fk int not null,
  PRIMARY key(cpf_pk),
  FOREIGN KEY(id_barracas_fk) REFERENCES barracas(id_pk)
  )
  
 CREATE table vendedores(
   nome VARCHAR(50) not null,
   idade int,
   profissao VARCHAR(30) not null,
   cpf_pk int not null,
   cpf_clientes_fk int not null,
   PRIMARY KEY(cpf_pk),
   FOREIGN KEY(cpf_clientes_fk) REFERENCES clientes(cpf_pk)
   )
   
  CREATE TABLE produtos(
    unidades int not null,
    validade int not null,
    id_pk int not null,
    nome VARCHAR not null,
    cpf_vendedores_fk int not null,
    PRIMARY KEY(id_pk),
    FOREIGN KEY(cpf_vendedores_fk) REFERENCES vendedores(cpf_pk)
    )
    
   INSERT INTO barracas (nome, endereco, produtos, id_pk)
   values('seu zé','rua parque da luz','maça, caldo de cana, churros, água',40),
   		 ('dona maria','rua parque da luz','água, coco, suco, gelo',30)
   
   insert into clientes (nome, cpf_pk, id_barracas_fk)
   values('Sabrina',40000,40),
   		 ('Ana',10300000,30)
  
   INSERT into vendedores(nome, profissao, cpf_pk, cpf_clientes_fk)
   VALUES('Maria', 'Cobradora', 1212050,40000),
   		 ('Marlete','Recepcionista', 120450358,10300000)
     
   INSERT into produtos(unidades, validade, id_pk, nome, cpf_vendedores_fk)
   values(45,05042025,50,'coco',1212050),
   		 (12,06042023,40,'caldo de cana',120450358)

	SELECT * FROM barracas
	SELECT * FROM clientes
	SELECT * FROM vendedores
	SELECT * FROM produtos