CREATE TABLE artistas(
  PRIMARY KEY (ID_artista),
  ID_artista int NOT null,
  nome_artista VARCHAR(500) not null,
  biografia VARCHAR(1000) not NULL,
  nacionalidade VARCHAR(50),
  data_nasc VARCHAR(40),
  estilo_arte VARCHAR(50) not NULL,
  site_oficial VARCHAR(200),
  email VARCHAR (100),
  telefone int,
  redes_sociais VARCHAR(800));
  
CREATE TABLE Obras_de_Arte (
    PRIMARY KEY (ID_Obra),
  	ID_Obra int not null,
    Titulo_Obra VARCHAR(200) not null,
    Descricao VARCHAR(50),
    Ano_Criacao int,
    Dimensoes VARCHAR(50) not null,
    Tecnica_Utilizada VARCHAR(100) not null,
    Preco int not null,
    Data_Aquisicao int,
  	id_artista int not null,
    Localizacao_Atual VARCHAR(100),
	FOREIGN KEY (id_artista) REFERENCES artistas(id_artista));

CREATE TABLE Galerias (
    PRIMARY KEY(ID_Galeria),
  	ID_Galeria int not null,
    Nome_Galeria VARCHAR(100) not NULL,
    Endereco VARCHAR(200),
    Cidade VARCHAR(50),
    Pais VARCHAR(50),
    Horario_Funcionamento VARCHAR(100),
    Tipo_Exposicao VARCHAR(100),
    ID_Obra int not NULL,
    FOREIGN KEY(ID_Obra) REFERENCES obras_de_arte(id_obra));

CREATE TABLE Curadores (
    PRIMARY KEY(ID_Curador),
  	ID_Curador int not null,
    Nome_Curador VARCHAR(100) not NULL,
    Especializacao VARCHAR(100),
    Data_Contratacao INT,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Site_Pessoal VARCHAR(200),
    Data_Nascimento INT,
    ID_Galeria INT NOT NULL,
	FOREIGN KEY(ID_Galeria)REFERENCES Galerias(ID_Galeria)
);

CREATE TABLE Exposicoes (
    PRIMARY KEY(ID_Exposicao),
  	ID_Exposicao int not null,
    Titulo_Exposicao VARCHAR(200),
    Descricao VARCHAR(500),
    Data_Inicio int not NULL,
    Data_Termino INT not NULL,
    Horario_Funcionamento VARCHAR(100),
    Numero_Obras INT not NULL,
    ID_Galeria int not NULL,
	FOREIGN KEY(id_galeria)REFERENCES Galerias(ID_Galeria),
    ID_Curador int not NULL,
  	FOREIGN KEY(id_curador) REFERENCES Curadores(ID_Curador));
    
 INSERT INTO artistas (ID_artista, nome_artista, biografia, estilo_arte)
 VALUES
    (1, 'Pablo Picasso', 'Pablo Picasso foi um pintor espanhol...', 'Cubismo'),
    (2, 'Vincent van Gogh', 'Vincent van Gogh foi um pintor holandês...', 'Pós-Impressionismo'),
    (3, 'Leonardo da Vinci', 'Leonardo da Vinci foi um polímata italiano...','Renascimento'),
    (4, 'Frida Kahlo', 'Frida Kahlo foi uma pintora mexicana...', 'Surrealismo'),
    (5, 'Salvador Dali', 'Salvador Dali foi um pintor espanhol...', 'Surrealismo');
    
INSERT INTO Obras_de_Arte (ID_Obra, Titulo_Obra, Dimensoes, Tecnica_Utilizada, Preco, id_artista)
VALUES
    (1, 'Guernica', '349 cm × 776 cm', 'Pintura a óleo', 10000000,1),
    (2, 'A Noite Estrelada','73.7 cm × 92.1 cm', 'Pintura a óleo', 8000000,2),
    (3, 'Mona Lisa', '77 cm × 53 cm', 'Pintura a óleo', 12000000,3),
    (4, 'A Coluna Quebrada', '91.5 cm × 73 cm', 'Pintura a óleo', 5000000,4),
    (5, 'A Persistência da Memória', '24 cm × 33 cm', 'Pintura a óleo', 9000000,5);

INSERT INTO Galerias (ID_Galeria, Nome_Galeria, ID_Obra)
VALUES
    (1, 'Galeria de Arte Moderna',1),
    (2, 'Museu Nacional de Arte',2),
    (3, 'Galeria de Arte Clássica', 3),
    (4, 'Museu de Arte Moderna',4),
    (5, 'Museo de Arte Mexicano', 5);

INSERT INTO Curadores (ID_Curador, Nome_Curador, ID_Galeria)
VALUES
    (1, 'Maria Silva',1),
    (2, 'João Santos',2),
    (3, 'Laura Hernandez', 3),
    (4, 'Michael Johnson', 4),
    (5, 'Ana Perez', 5);

INSERT INTO Exposicoes (ID_Exposicao, Data_Inicio, Data_Termino, Numero_Obras, ID_Galeria, ID_Curador)
VALUES
    (1, 0504, 0605, 50, 1, 1),
    (2,0708,0909, 30, 2, 2),
    (3,0402,0504, 40, 3, 3),
    (4,0202,0303,55, 4, 4),
    (5,0108,0109, 25, 5, 5);
