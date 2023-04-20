CREATE TABLE cliente(
  ID_Cliente int not null,
  nome VARCHAR(25)not null,
  data_nasc int not null,
  endereco VARCHAR(89) not null,
  email varchar(80),
  telefone int not NULL,
  cpf_pk int not null,
  primary key (cpf_pk)
  )
  
 create table pedido(
   data_pedido int not null,
   data_entrega int not null,
   Preço_total int not null,
   Forma_de_Pagamento VARCHAR(10) not null,
   id_pedido_pk int not null,
   cliente_FK int not null,
   PRIMARY KEY (id_pedido_pk),
   FOREIGN KEY (cliente_FK) REFERENCES cliente(cpf_pk)
   )
   
  create table produto(
    Nome_Produto VARCHAR(100) not null,
    Descricao VARCHAR(70),
    ID_produto int,
    preco int not null,
    quant_estoque int not NULL
    ID_Produto_PK int not null,
    PRIMARY KEY (ID_Produto_PK), 
    pedido_FK int not NULL,
    FOREIGN KEY (pedido_FK) REFERENCES pedido(id_pedido_pk)
    )
    
   CREATE TABLE categoria(
     nome_categoria VARCHAR(80)NOT NULL,
     desc_categoria VARCHAR(1000),
     id_category int not null,
     code_pk int not null,
     PRIMARY KEY(code_pk),
     produto_FK int not NULL,
     FOREIGN KEY(produto_FK) REFERENCES produto(id_produto_pk)
     )