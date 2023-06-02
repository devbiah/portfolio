CREATE TABLE Artista(
	ID_Artista_PK int not NULL,
  	Nome_Artista VARCHAR (100) not NULL,
  	Especialidade VARCHAR (40) NOT NULL,
  	Idade_artista int, 
    Qnt_artes int,
	PRIMARY KEY (ID_Artista_PK) )

CREATE TABLE Comprador(
	ID_Comprador_PK int not NULL,
  	Nome_comprador VARCHAR (100) not NULL,
	PRIMARY KEY (ID_Comprador_PK))
 
CREATE TABLE Artista_Comprador(
    ID_Artista_FK int not null,
  	ID_Comprador_FK int not null,
  	FOREIGN KEY (ID_Artista_FK) REFERENCES artista(id_artista_pk),
    FOREIGN KEY (ID_Comprador_FK) REFERENCES comprador(id_comprador_pk)
  )
  
 INSERT INTO Artista(ID_Artista_PK,Nome_Artista,Especialidade)
    		  VALUES(1,'MIlly','Pintura'),
					(2,'Ester','Fotografia'),
				    (3,'Dylan','Arte_Contemporanea');
    
 INSERT INTO Comprador(ID_Comprador_PK,Nome_comprador)
    		  VALUES(4,'Meli'),
					(5,'Emmy'),
				    (6,'Billie');
    
 INSERT INTO Artista_Comprador(ID_Artista_FK,ID_Comprador_FK)
 			  VALUES(1,5)
                
	SELECT * FROM Artista;
	SELECT * FROM Comprador;
	SELECT * FROM Artista_Comprador;
