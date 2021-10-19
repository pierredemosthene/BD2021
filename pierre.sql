CREATE DATEBASE projeto


CREATE TABLE vendedor_1(
	comissao float not null,
	nome varchar(30) Not null,
	cpf varchar(30) not null,
	rg varchar(30) not null,
	senha varchar(30) not null,
	email varchar(40) not null,
	rua varchar(40) not null,
	bairro varchar(40) not null,
	numero int not null,
	cidade varchar(40) not null,
	CONSTRAINT pk_vendedor_1 PRIMARY KEY(rg)
);
INSERT INTO vendedor_1(Comissao,nome,cpf,rg,senha,email,rua,bairro,numero,cidade)
VALUES('15.30','roberson','586.384.824-89','g43234-5',1234,'roberson@gmail.com','rouxinol','efapi',210,'chapeco');

INSERT INTO vendedor_1(Comissao,nome,cpf,rg,senha,email,rua,bairro,numero,cidade)
VALUES('16.31','peterson','430.284.844-89','f87234-5',3334,'peterson@gmail.com','zanrosso','efapi',331,'chapeco');

INSERT INTO vendedor_1(Comissao,nome,cpf,rg,senha,email,rua,bairro,numero,cidade)
VALUES('17.32','katia','321.567.824-89','R43234-3',4565,'katia@gmail.com','thiago villa pascoa','efapi',404,'chapeco');

INSERT INTO vendedor_1(Comissao,nome,cpf,rg,senha,email,rua,bairro,numero,cidade)
VALUES('18.15','tatia','586.987.824-98','P09634-7',1798,'tatia@gmail.com','são jão','efapi',89,'chapeco');

INSERT INTO vendedor_1(Comissao,nome,cpf,rg,senha,email,rua,bairro,numero,cidade)
VALUES('19.30','Mack','598.401.824-89','M43234-5',4070,'mack@gmail.com','rouxinol','efapi',222,'chapeco');



CREATE TABLE produtos(
	tamanho varchar(20) not null,
	nome varchar(30) Not null,
	codigo_prod int not null,
	date1 date not null,
	peso float not null,
	quantidade float not null,
	preco float not null,
	CONSTRAINT pk_produtos PRIMARY KEY(codigo_prod)
	
);

INSERT INTO produtos (tamanho,nome,codigo_prod,date1,peso,quantidade,preco)
VALUES('14.50','camiseta',6,'2021-09-10','55.4','99.7',250.00);

INSERT INTO produtos (tamanho,nome,codigo_prod,date1,peso,quantidade,preco)
VALUES('12.50','jaqueta',7,'2021-09-13','56.4','97.7',230.00);

INSERT INTO produtos (tamanho,nome,codigo_prod,date1,peso,quantidade,preco)
VALUES('15.35','Moletom',8,'2020-09-11','55.5','59.9',280.00);

INSERT INTO produtos (tamanho,nome,codigo_prod,date1,peso,quantidade,preco)
VALUES('20.22','t-shirt',9,'2019-06-15','45.7','60.7',455.00);

INSERT INTO produtos (tamanho,nome,codigo_prod,date1,peso,quantidade,preco)
VALUES('22.35','tie',10,'2021-01-20','67.8','64.3',799.00);

INSERT INTO produtos (tamanho,nome,codigo_prod,date1,peso,quantidade,preco)
VALUES('19,40','boné',11,'2020-08-22','77.8','94.2',900.00);



CREATE TABLE categoria(
	codigo_cate int not null,
	roupas_fem varchar(40) not null,
	roupas_masc varchar(40) not null,
	roupas_infantil varchar(40) not null,
	CONSTRAINT PK_categoria PRIMARY KEY (codigo_cate)
);

 INSERT INTO categoria(codigo_cate,roupas_fem,roupas_masc,roupas_infantil)
 VALUES(03,'anorak','boné','listrado');

 INSERT INTO categoria(codigo_cate,roupas_fem,roupas_masc,roupas_infantil)
 VALUES(04,'amorela','streetwear','mijão');

 INSERT INTO categoria(codigo_cate,roupas_fem,roupas_masc,roupas_infantil)
 VALUES(05,'bainha','business casual','pagão');

 INSERT INTO categoria(codigo_cate,roupas_fem,roupas_masc,roupas_infantil)
 VALUES(06,'bandana','black tie','manta');

 INSERT INTO categoria(codigo_cate,roupas_fem,roupas_masc,roupas_infantil)
 VALUES(07,'boyfriend jacket','smart casual','naninha');



CREATE TABLE subcategoria (
	codigo_sub int not null
	blusa varchar(30) not null,
	camisa varchar(30) not null,
	casaco varchar(30) not null,
	CONSTRAINT pk_subcategoria PRIMARY KEY(codigo_sub) 
	CONSTRAINT fk_produtos_codigo FOREIGN KEY(codigo_sub)references produtos(codigo_sub),
	CONSTRAINT fk_categoria_codigo_cate FOREIGN KEY(codigo_cate) references categoria(codigo_cate)
);

 INSERT INTO subcategoria (codigo_sub,blusa,camisa,casaco)
 VALUES(01,'blusa pinafore','camisa jeans','jaqueta');

 INSERT INTO subcategoria (codigo_sub,blusa,camisa,casaco)
 VALUES(02,'blusa alcinha','camisa careca','parka');

 INSERT INTO subcategoria (codigo_sub,blusa,camisa,casaco)
 VALUES(03,'blusa manga longa','camisa polo','cardigãs');

 INSERT INTO subcategoria (codigo_sub,blusa,camisa,casaco)
 VALUES(04,'blusa ciganinha','camisa henley','suéter');

 INSERT INTO subcategoria (codigo_sub,blusa,camisa,casaco)
 VALUES(05,'blusa manga curta','camisa alta','trench coat');







