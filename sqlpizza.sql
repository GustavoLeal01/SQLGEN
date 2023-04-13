-- Criar o banco de dados db_pizzaria_legal
CREATE DATABASE db_pizzaria_legal;

-- Selecionar o banco de dados criado
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (id, nome, descricao) VALUES
    (1, 'Salgada', 'Pizzas salgadas'),
    (2, 'Doce', 'Pizzas doces'),
    (3, 'Vegetariana', 'Pizzas vegetarianas'),
    (4, 'Sem glúten', 'Pizzas sem glúten'),
    (5, 'Especial', 'Pizzas especiais');

-- Criar a tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir 8 registros na tabela tb_pizzas, relacionando com a tabela tb_categorias
INSERT INTO tb_pizzas (id, nome, descricao, valor, categoria_id) VALUES
    (1, 'Mussarela', 'Pizza de mussarela, molho e orégano', 35.00, 1),
    (2, 'Calabresa', 'Pizza de calabresa, cebola e molho', 40.00, 1),
    (3, 'Portuguesa', 'Pizza de presunto, mussarela, ovos, cebola e azeitonas', 45.00, 1),
    (4, 'Brigadeiro', 'Pizza doce de brigadeiro e granulado', 50.00, 2),
    (5, 'Banana', 'Pizza doce de banana e açúcar', 40.00, 2),
    (6, 'Margherita', 'Pizza de mussarela, tomate e manjericão', 55.00, 1),
    (7, 'Palmito', 'Pizza de palmito, mussarela e azeitonas', 50.00, 3),
    (8, 'Sem glúten', 'Pizza sem glúten de frango, mussarela e milho', 60.00, 4);

-- Fazer um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Fazer um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- Fazer um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- Fazer um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT tb_pizzas.*, tb_categorias.nome AS
