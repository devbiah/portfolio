CREATE TABLE funcionario(
  id_funcionario_pk int not null,
  nome VARCHAR(100) not null,
  data_adm int not null,
  PRIMARY KEY(id_funcionario_pk))
  
CREATE TABLE departamento(
  id_departamento_pk int not null,
  nome VARCHAR(100) not null,
  CEP int,
  numero int,
  complemento int,
  PRIMARY KEY(id_departamento_pk))
  
CREATE TABLE projeto(
  id_projeto_pk int not null,
  nome VARCHAR(100) not null,
  data_inicio int not null,
  data_conclusao int not null,
  PRIMARY KEY(id_projeto_pk))
  
 CREATE TABLE habilidade(
   id_habilidade_pk int not null,
   descricao int not null,
   PRIMARY KEY (id_habilidade_pk))
  
CREATE TABLE funcionario_depart(
  id_funcionario_fk int not null,
  id_departamento_fk int not null,
  FOREIGN KEY(id_funcionario_fk) REFERENCES funcionario(id_funcionario_pk),
  FOREIGN KEY(id_departamento_fk) REFERENCES departamento(id_departamento_pk)
)

CREATE TABLE projeto_depart(
  id_projeto_fk int not null,
  id_departamento_fk int not null,
  FOREIGN KEY(id_projeto_fk) REFERENCES projeto(id_projeto_pk),
  FOREIGN KEY(id_departamento_fk) REFERENCES departamento(id_departamento_pk)
)


CREATE TABLE projeto_depart(
  id_projeto_fk int not null,
  id_departamento_fk int not null,
  FOREIGN KEY(id_projeto_fk) REFERENCES projeto(id_projeto_pk),
  FOREIGN KEY(id_departamento_fk) REFERENCES departamento(id_departamento_pk)
)
CREATE TABLE habilidade_departamento(
  id_habilidade_fk int not null,
  id_departamento_fk int not null,
  FOREIGN KEY(id_habilidade_fk) REFERENCES habilidade(id_habilidade_pk),
  FOREIGN KEY(id_departamento_fk) REFERENCES departamento(id_departamento_pk))

INSERT into funcionario(id_funcionario_pk,nome,data_adm)
  VALUES(1,'Joao Silva',20190115),
  		(2,'Maria Souza', 20200203),
        (3,'Pedro Santos', 20180510),
        (4,'Ana Oliveira', 20170820),
        (5,'Carlos Almeida', 20210312);
        
INSERT into departamento(id_departamento_pk,nome)
  VALUES(1,'RH'),
  		(2,'Vendas'),
        (3,'Desenvolvimento'),
        (4,'Financeiro'),
        (5,'Marketing');    
        
INSERT into projeto(id_projeto_pk,nome,data_inicio, data_conclusao)
  VALUES(1,'Projeto A',2020011, 20210330),
  		(2,'Projeto B', 20210203,20220510),
        (3,'Projeto C', 20190510, 20201020),
        (4,'Projeto D', 20220820, 20230215),
        (5,'Projeto E', 20230101, 20240630);
          
INSERT into habilidade(id_habilidade_pk,descricao)
  VALUES(1,1),
  		(2,2),
        (3,3),
        (4,4),
        (5,5);
        
INSERT INTO funcionario_depart(id_funcionario_fk, id_departamento_fk)
		VALUES(5,1)

INSERT INTO projeto_depart(id_projeto_fk,id_departamento_fk)
        VALUES(2,1)

INSERT INTO habilidade_departamento(id_habilidade_fk,id_departamento_fk)
        VALUES(3,5)