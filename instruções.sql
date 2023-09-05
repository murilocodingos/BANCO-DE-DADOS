--CRIAÇÃO DA TABELA DE PLATAFORMAS

CREATE TABLE "tb_plataformas" (
	"cod_plataforma" INTEGER,
	"nome" TEXT,
	"fabricante" TEXT,
	PRIMARY KEY ("cod_plataforma" AUTOINCREMENT)
	);




--CRIAÇÃO DA TABELA DE JOGOS

CREATE TABLE "tb_jogos" (
	"cod_jogo"	INTEGER,
	"titulo"	TEXT,
	"genero"	TEXT,
	"lancamento"	TEXT,
	"cod_plataforma"	INTEGER,
	CONSTRAINT "cod_plataforma" FOREIGN KEY("cod_plataforma") REFERENCES "tb_plataformas"("cod_plataforma"),
	PRIMARY KEY ("cod_jogo" AUTOINCREMENT)
);



--REGISTRO DAS PLATAFORMAS DE VIDEOGAMES

INSERT INTO tb_plataformas (nome, fabricante)
VALUES
	('Playstation 1', 'Sony'),
	('Playstation 2', 'Sony'),
	('Playstation 4', 'Sony'),
	('Playstation 3', 'Sony'),
	('Playstation 5', 'Sony'),
	('Xbox 360', 'Microsoft'),
	('Xbox One', 'Microsoft'),
	('Xbox Series S', 'Microsoft'),
	('Xbox Series X', 'Microsoft'),
	('Nintendo Switch', 'Nintendo');




--REGISTRO DOS JOGOS

INSERT INTO tb_jogos (titulo, genero, lancamento, cod_plataforma)
VALUES
('Resident Evil 2', 'Survival Horror', '29-01-1998', '1'),
('Mortal Kombat Armageddon', 'Luta', '09-10-2006', '2'),
('GTA V', 'Ação/Aventura', '17-09-2013', '4'),
('The Last of Us', 'Ação/Aventura', '14-06-2013', '3'),
('Hogwarts Legacy', 'RPG', '10-02-2023', '5'),
('Bioshock Infinite', 'Tiro em primeira pessoa', '26-03-2013', '6'),	
('Call of Duty: Black Ops 2', 'Tiro em primeira pessoa', '12-11-2012', '7'),
('Starfield', 'Jogo eletrônico de tiro', '06-09-2023', '8'),
('Star Wars Jedi: Survivor', 'Ação/Aventura', '28-04-2023', '9'),
('Animal Crossing: New Horizons', 'Simulação', '20-03-2020', '10');




--CONSULTA DE PLATAFORMA

SELECT * FROM tb_plataformas WHERE nome = "Playstation 5";



--CONSULTA DE GÊNERO

SELECT * FROM tb_jogos WHERE genero = "Simulação";




--CONSULTA COM O INNER JOIN PARA A TABELA DE JOGOS

SELECT
	tb_jogos.titulo,
	tb_jogos.genero,
	tb_jogos.lancamento,
	tb_plataformas.fabricante AS "nome fabricante"
FROM
	tb_jogos
INNER JOIN
	tb_plataformas ON tb_plataformas.cod_plataforma = tb_jogos.cod_plataforma;




--CONSULTA COM O INNER JOIN PARA A TABELA DE PLATAFORMA


SELECT
	tb_plataformas.nome,
	tb_plataformas.fabricante
FROM
	tb_jogos
INNER JOIN
	tb_plataformas ON tb_plataformas.cod_plataforma = tb_jogos.cod_plataforma;




--ALTERAÇÃO DE DATA DE LANÇAMENTO

UPDATE tb_jogos
SET lancamento = '07-08-2003, 12-02-2001, 28-03-2007, 06-11-2019'
WHERE lancamento = '29-01-1998, 09-10-2006, 17-09-2013, 06-09-2023';


--EXCLUSÃO DE JOGOS

DELETE FROM tb_jogos WHERE titulo = 'Starfield';
DELETE FROM tb_jogos WHERE titulo = 'Animal Crossing: New Horizons';
DELETE FROM tb_jogos WHERE titulo = 'Star Wars Jedi: Survivor';
DELETE FROM tb_jogos WHERE titulo = 'Hogwarts Legacy';