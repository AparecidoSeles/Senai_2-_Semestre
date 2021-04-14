--DDL
CREATE TABLE Clinica
(
	IdClinica		INT PRIMARY KEY 
	,NomeFantaia	VARCHAR (200) 
	,RazacaoSocial  VARCHAR(200) 
	,CNPJ			CHAR(14) 
	,Horario	    VARCHAR (200)
	,Endereco		VARCHAR(250)
);


CREATE TABLE Especialidade
(
	IdEspecialidade	   INT PRIMARY KEY 
	,NomeEspecialidade VARCHAR(200) NOT NULL
);
GO

CREATE TABLE TipoUsuario
(
	IdTipoUsuario	 INT PRIMARY KEY 
	,NomeTipoUsuario VARCHAR(200)
);
GO

CREATE TABLE Situacao
(
	IdSituacao	  INT PRIMARY KEY 
	,NomeSituacao VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Usuario
(
	IdUsuario		INT PRIMARY KEY 
	,IdTipoUsuario  INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
	,Email			VARCHAR(200) NOT NULL
	,Senha			VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Medico
(
	IdMedico		 INT PRIMARY KEY 
	,IdClinica		 INT FOREIGN KEY REFERENCES Clinica (IdClinica)
	,IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade)
	,IdUsuario		 INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
	,NomeMedico		 VARCHAR (200) NOT NULL
	,CRM			 VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Paciente
(
	IdPaciente		INT PRIMARY KEY 
	,IdUsuario		INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
	,NomePaciente   VARCHAR(200)	
	,DataNascimeto	DATE
	,Telefone		CHAR(13) 
	,RG				CHAR(11) NOT NULL
	,CPF			CHAR(15) NOT NULL
	,Endereço		VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Consulta
(
	IdConsulta		INT PRIMARY KEY
	,IdMedico		INT FOREIGN KEY REFERENCES Medico(IdMedico)
	,IdPaciente		INT FOREIGN KEY REFERENCES Paciente(IdPaciente)
	,IdSituacao		INT FOREIGN KEY REFERENCES Situacao (IdSituacao)
	,DataConsulta	DATETIME

);
GO
