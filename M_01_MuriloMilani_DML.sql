USE M_Gufos

Insert into Usuarios(Nome, Email, Senha, Permissao)
	Values	('Administrador','admin@admin.com', '123456', 'Administrador')

	Insert into Usuarios(Nome, Email, Senha, Permissao)
	Values	('Josias Cabele','jc@senai.com', '123456', 'Aluno')

	Insert into Categorias(Nome)
		Values ('Jogos'),('Meetup'),('Futebol');

	Insert into Eventos(Titulo,Descricao,DataEvento,Localizacao,IdCategoria)
		VALUES ('Meetup'
				,'Bd Relacionais'
				,'2019-08-07T18:30:00'
				,'Alameda Barão de Limeira, 539'
				,2);
	
	Insert into Presencas (IdEvento,IdUsuario)
		Values (1,2);

		Insert into Presencas (IdEvento,IdUsuario)
		Values (2,2);
