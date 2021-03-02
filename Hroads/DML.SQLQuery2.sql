USE Senai_Hroads_Manha;

INSERT INTO Classes (Nome) 
VALUES				('Bárbaro')
		   		   ,('Cruzado')
				   ,('Caçadora')
				   ,('Monge')
				   ,('Necromante')
				   ,('Feitiçeiro')
				   ,('Arcanista');
				   

INSERT INTO Habilidades (Nome , IdTipo)
VALUES					('Lança Mortal' ,1 )
						,('Escudo Supemo' , 2)
						,('Recupar Vida' ,3 );

INSERT INTO TipoHabilidades (Nome) 
VALUES						('Ataque')
							,('Defesa')
							,('Cura');
	
INSERT INTO Personagens  (Nome,      IdClasse,   MaxVida,   MaxMana,   Atualizacao)
VALUES					 ('Albedo'    ,6,		  150,		 50		,('GETDATE'))
						,('Dulic'     ,1,		  100,	     50		,('GETDATE'))
						,('Xiao'      ,2,		  250,	    100,('GETDATE'));
										
