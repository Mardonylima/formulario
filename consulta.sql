CREATE DATABASE formulario;
USE formulario;

CREATE TABLE senioridade (
cod_senioridade INTEGER,
senioridade VARCHAR (30),
PRIMARY KEY (cod_senioridade)
);

CREATE TABLE areaa (
cod_areaa INTEGER,
area VARCHAR (100),
PRIMARY KEY (cod_areaa)
);

CREATE TABLE tecnologia (
cod_tecnologia INTEGER,
tecno VARCHAR (100),
PRIMARY KEY (cod_tecnologia)
);

CREATE TABLE formulario (
nome VARCHAR (70),
sobrenome VARCHAR (70),
email VARCHAR (100),
senioridade_cod INTEGER,
areaa_cod INTEGER,
tecnologia INTEGER,
PRIMARY KEY (email),
CONSTRAINT fk_senioridade FOREIGN KEY (senioridade_cod)
REFERENCES senioridade (cod_senioridade),
CONSTRAINT fk_areaa FOREIGN KEY (areaa_cod)
REFERENCES areaa (cod_areaa),
CONSTRAINT fk_tecnologia FOREIGN KEY (tecnologia)
REFERENCES tecnologia (cod_tecnologia)
);

INSERT INTO senioridade (cod_senioridade, senioridade)
VALUE 
	(1, 'júnior'),
	(2, 'pleno'),
	(3, 'sênior');
	
INSERT INTO areaa (cod_areaa, AREA)
VALUE 
	(1, 'Front-end'),
	(2, 'Back-end'),
	(3, 'FullStack');
	
INSERT INTO tecnologia (cod_tecnologia, tecno)
VALUE 
	(1, 'HTML'),
	(2, 'CSS'),
	(3, 'JAVASCRIPT'),
	(4, 'PHP'),
	(5, 'C#'),
	(6, 'PYTHON'),
	(7, 'JAVA');
	
INSERT INTO formulario (nome, sobrenome, email, senioridade_cod, areaa_cod, tecnologia)
VALUE 
	('administrador', 'adminjunior', 'administrador@gmail.com', 3, 3, 7);
	
#------=-----=-----=------=------=------=
SELECT * FROM formulario

SELECT nome, sobrenome, email, senioridade, area, tecno FROM formulario 
INNER JOIN senioridade ON cod_senioridade = senioridade_cod
INNER JOIN areaa ON cod_areaa = areaa_cod
INNER JOIN tecnologia ON cod_tecnologia = tecnologia

