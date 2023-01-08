USE MASTER
GO
CREATE DATABASE LPEI
GO

USE LPEI
GO


CREATE TABLE UNIDADECURRICULAR(
	IDUC 		INT PRIMARY KEY IDENTITY(1,1),
	ID_CURSO 	INT					 UNIQUE,
    CURSO_ABREV VARCHAR(5)	NOT NULL,
	UC_ABREV 	VARCHAR(5)	NOT NULL,
	CURSO 		VARCHAR(30) NOT NULL,
    NOME  		VARCHAR(50) NOT NULL,
	SEMESTRE 	INT			NOT NULL,
);


CREATE TABLE ASSIDUIDADE(
	IDCURSO 		INT 			PRIMARY KEY IDENTITY(1,1),
	ANO_LETIVO		VARCHAR(9) 		NOT NULL,
	ID_UC 			INT 			NOT NULL UNIQUE,
    TURMA 			INT 			NOT NULL,
	TURMAABREV		VARCHAR(3) 		NOT NULL,
	INSCRITOS 		INT 			NOT NULL,
	TIPOLOGIA		VARCHAR(3) 		NOT NULL,
	PRESENCAS 		INT 			NOT NULL,
	DOCENTE 		VARCHAR(50) 	NOT	NULL,
	DEPARTAMENTO 	VARCHAR(100) 	NOT NULL,
	HORA			INT 			NOT NULL,
);

ALTER TABLE ASSIDUIDADE
	ADD CONSTRAINT FK_ID_UC FOREIGN KEY(ID_UC) REFERENCES UNIDADECURRICULAR(IDUC)

