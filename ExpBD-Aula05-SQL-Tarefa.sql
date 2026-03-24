-- EXERCÍCIO 1

CREATE TABLE ALUNOS (
    id_aluno INT PRIMARY KEY not null auto_increment,
    nome VARCHAR(100) not null,
    idade INT not null,
    cidade VARCHAR(50) not null
);
INSERT INTO ALUNOS (id_aluno, nome, idade, cidade)
VALUES (default, 'Kauan Silva', 20, 'São Paulo'),
       (default, 'Diego Duque', 18, 'Campinas'),
       (default, 'Luca Aoreira', 17, 'Rio de Janeiro');

UPDATE ALUNOS
SET cidade = 'Curitiba'
WHERE id_aluno = 1;

DELETE FROM ALUNOS
WHERE idade < 18;

-- EXERCÍCIO 2

CREATE TABLE PRODUTOS(
	id_produto int not null auto_increment,
    nome_produto varchar(100) not null,
    preco float not null,
    estoque int not null
);
INSERT INTO PRODUTOS (id_produto, nome_produto, preco, estoque)
VALUES (1, 'Manga', 5.00, 10),
       (2, 'Pera', 3.00, 0),
       (3, 'Maca', 2.00, 5),
       (4, 'Melancia', 30.00, 3);

UPDATE PRODUTOS
SET preco = preco * 1.10
WHERE id_produto = 4;

DELETE FROM PRODUTOS
WHERE estoque = 0;

-- EXERCÍCIO 3

CREATE TABLE FUNCIONARIOS(
	id_funcionario int PRIMARY KEY not null auto_increment ,
    nome varchar(100) not null,
    cargo varchar(50) not null,
    salario float not null
);

INSERT INTO FUNCIONARIOS (id_funcionario, nome, cargo, salario)
VALUES  (default, "Cleber Leite", "Montador de Andaime", 2500.98),
		(default, "Raimundo Neto", "Mecânico Montador", 5000.86),
        (default, "Clovis Menegaldo", "Técnico Eletricista", 4500.79),
        (default, "Diogo Monzani", "Auxiliar administrativo", 1615.68),
        (default, "Maria Alice", "Analista", 2300.59);

UPDATE FUNCIONARIOS
SET salario = salario + 500
WHERE cargo = 'Analista';

DELETE FROM FUNCIONARIOS
WHERE salario < 2000;

-- EXERCICIO 4

CREATE TABLE LIVROS(
	id_livro int PRIMARY KEY not null auto_increment,
    titulo varchar(150) not null,
    autor varchar(100) not null,
    ano_publicacao int not null
);

INSERT INTO LIVROS (id_livro, titulo, autor, ano_publicacao)
VALUES	(default, "João e o pé de feijão", "Benjamin Tabart", 1807),
		(default, "As aventuras de pinóquio", "Carlo Collodi", 2002),
        (default, "João e Maria", "Ruth Rocha", 2010),
        (default, "O Ratinho, o Morango Vermelho Maduro e o Grande Urso Esfomeado", "Audrey Wood", 2014);
        
UPDATE LIVROS
SET ano_publicacao = 1870
WHERE id_livro = 1;

DELETE FROM LIVROS
WHERE ano_publicacao < 2000;

-- EXERCÍCIO 5
CREATE TABLE CLIENTES(
	id_cliente int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    telefone varchar(20) not null
);

INSERT INTO CLIENTES (id_cliente, nome, email, telefone)
VALUES (1, 'Mariana Guedes', 'mariana@email.com', '19923456789'),
       (2, 'João Zanon', 'joao@email.com', '11988888888'),
       (3, 'Lucas Lima', 'lucas@email.com', '14934567890'),
       (4, 'Ana Meneguel', 'ana@email.com', '22956789012'),
       (5, 'Carlos Nietchze', '#####@gmail.com', '12967890123');

UPDATE CLIENTES
SET telefone = 11987654321
WHERE id_cliente = 2;

DELETE FROM CLIENTES
WHERE email = '#####@gmail.com';

