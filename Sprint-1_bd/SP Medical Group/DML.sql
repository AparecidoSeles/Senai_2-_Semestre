--DML
USE SP_Medical_Group;
GO


INSERT INTO Clinica (IdClinica	,NomeFantasia	   ,RazaoSocial			,CNPJ				,Horario		  ,Endereco)
VALUES				(1			,'Clinica Possarle'  ,'SP Medical Group'  ,'86400902000130' ,'06:00 ás 18:00'   ,'Av. Barão Limeira, 532,SP');

INSERT INTO Especialidade (IdEspecialidade	,NomeEspecialidade)
VALUES						 (	1				,'Acupuntura')
							,(	2				,'Anestesiologia')
							,(	3				,'Angiologia')
							,(	4				,'Cardiologia')
							,(	5				,'Cirurgia Cardiovascular')
							,(	6				,'Cirurgia da Mão')
							,(	7				,'Cirurgia do Aparelho Digestivo')
							,(	8				,'Cirurgia Geral')
							,(	9				,'Cirurgia Pediátrica')
							,(	10				,'Cirurgia Plástica')
							,(	11				,'Cirurgia Torácica')
							,(	12				,'Cirurgia Vascular')
							,(	13				,'Dermatologia')
							,(	14				,'Radioterapia')
							,(	15				,'Urologia')
							,(	16				,'Pediatria')
							,(	17				,'Psiquiatria');	
GO


INSERT INTO TipoUsuario	(IdTipoUsuario	,   NomeTipoUsuario	)
VALUES					(   1				,'Administrador')
						,(   2				,'Medico'		)
						,(   3				,'Paciente'		);
GO


INSERT INTO Usuario  (IdUsuario	,IdTipoUsuario				,Email						    ,Senha )
VALUES				 (		1		,1			,'admin@admin.com'						    ,'1234')
					,(		2		,2			,'ricardo.lemos@spmedicalgroup.com.br'	    ,'1234')
					,(		3		,2			,'roberto.possarle@spmedicalgroup.com.br'   ,'1234')
					,(		4		,3			,'helena.souza@spmedicalgroup.com.br'	    ,'1234')
					,(		5		,3			,'ligia@gmail.com'					    	,'1234')
					,(		6		,3			,'alexandre@gmail.com'						,'1234')
					,(		7		,3			,'fernando@gmail.com'						,'1234')
					,(		8		,3			,'henrique@gmail.com'						,'1234')
					,(		9		,3			,'joao@hotmail.com'							,'1234')
					,(		10		,3			,'bruno@gmail.com'					 		,'1234')
					,(		11      ,3		    ,'mariana@outlook.com'						,'1234');
GO


INSERT INTO Medico (IdMedico	,IdClinica	,IdUsuario	  ,NomeMedico			,CRM			,IdEspecialidade)
VALUES			     ( 1		,1			,2	,		'Ricardo Lemos'		,'54356-SP'			,2)
					,( 2		,1			,3	,		'Roberto Possarle'	,'53452-SP'			,17)
					,( 3		,1			,4	,		'Helena Strada'		,'65463-SP'			,16);
GO


INSERT INTO Paciente (IdPaciente	,IdUsuario	  ,NomePaciente		,DataNascimeto		  ,Telefone				,RG		       ,CPF							,Endereço											)
VALUES				(	1			,5			,'Ligia'		,'13/10/1983'		,'11 3456-7654'		,'43522543-5'	,'94839859000'	,'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000')
					,(	2			,6			,'Alexandre'	,'23/07/2001'		,'11 98765-6543'	,'32654345-7'	,'73556944057'	,'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200')
					,(	3			,7			,'Fernando'		,'10/10/1978'		,'11 97208-4453'	,'54636525-3'	,'16839338002'	,'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200')
					,(	4			,8			,'Henrique'		,'13/10/1985'		,'11 3456-6543'		,'54366362-5'	,'14332654765'	,'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030')
					,(	5			,9			,'João'			,'27/08/1975'		,'11 7656-6377'		,'t32544444-1'	,'91305348010'	,'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380')
					,(	6			,10			,'Bruno'		,'21/03/1972'		,'11 95436-8769'	,'54566266-7'	,'79799299004'	,'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001')
					,(	7			,11			,'Mariana'		,'05/03/2018'		,	 NULL			,'54566266-8'	,'13771913039'	,'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');
GO
			
			
INSERT INTO Situacao (IdSituacao	,NomeSituacao)
VALUES				(	1			,'Agendada'  )
					,(	2			,'Realizada' )
					,(	3		    ,'Cancelada' );

GO


INSERT INTO Consulta (IdConsulta	,IdMedico	,IdPaciente	  ,    DataConsulta			    , IdSituacao)
VALUES				 (    1			,	4			,	7		  ,'01/12/2020 15:00'		,	  2		)
					,(	  2			,	3			,	2		  ,'01/06/2018 10:00'		,	  3		)
					,(	  3			,	3			,	3		  ,'02/07/2018 11:00'		,	  2		)
					,(	  4			,	3			,	2		  ,'02/06/2018 10:00'		,	  2		)
					,(	  5			,	2			,	4		  ,'02/07/2019 11:00'		,	  3		)
					,(	  6			,	4			,	7		  ,'03/08/2020 15:00'		,	  1		)
					,(	  7			,	2			,	4		  ,'03/09/2020 11:00'		,	  1		);
GO

