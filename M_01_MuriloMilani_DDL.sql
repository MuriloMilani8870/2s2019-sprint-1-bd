Create Database M_Gufos

Use M_Gufos

Create Table Usuarios(
	IdUsuario INT IDENTITY NOT NULL PRIMARY KEY
	,Nome VARCHAR(255)  NOT NULL
	,Email VARCHAR(255) NOT NULL UNIQUE
	,Senha VARCHAR(255) NOT NULL 
	,Permissao VARCHAR(255) NOT NULL 
);

CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL
	,Nome VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Eventos(
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL
	,Titulo VARCHAR(255) NOT NULL 
	,Descricao TEXT 
	,DataEvento DateTime NOT NULL
	,Localizacao VARCHAR(255) NULL
	,Ativo BIT NOT NULL DEFAULT(1)
	,IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
);

Create Table Presencas(
	 IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
	 ,IdEvento INT FOREIGN KEY REFERENCES Eventos(IdEvento)

);
