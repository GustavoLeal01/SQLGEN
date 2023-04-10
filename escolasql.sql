CREATE DATABASE db_colegio;

CREATE TABLE tb_alunos(
id BIGINT  AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(35), 
idade INT,
nota INT,
ra INT,
turma VARCHAR(1)

);

INSERT INTO tb_alunos(nome, idade, nota, ra, turma)
VALUES("NegoDoce",24, 6,9696, "a");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos
SET nota = 8
WHERE id=10