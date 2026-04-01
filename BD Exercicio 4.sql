CREATE TABLE produto (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2),
categoria VARCHAR(50)
);
CREATE TABLE cliente (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
cidade VARCHAR(100),
idade INT
);
CREATE TABLE pedido (
id INT AUTO_INCREMENT PRIMARY KEY,
cliente_id INT,
valor_total DECIMAL(10,2),
data_pedido DATE
);

INSERT INTO produto (id, nome, preco, categoria)
VALUES  (default, "Mouse", 250.59, "Perifericos"),
		(default, "Teclado", 150.67, "Perifericos"),
        (default, "Mesa", 499.99, "Moveis"),
        (default, "Monitor", 499.99, "Perifericos");

INSERT INTO cliente (id, nome, cidade, idade)
VALUES  (default, "Diego", "Paulinia", 18),
		(default, "Kauan", "Paulinia", 18),
        (default, "Luca", "Paulinia", 28),
        (default, "Pedro", "Campinas", 35);

INSERT INTO pedido (id, cliente_id, valor_total, data_pedido)
VALUES  (default, 1, 250.59, '2023-04-01'),
		(default, 1, 150.67, '2023-02-05'),
        (default, 2, 499.99, '2025-12-08'),
        (default, 3, 750.58, '2026-03-01');



select nome from cliente
where idade >
			(select AVG(idade) from cliente);
            
select nome, preco from produto
where preco >
			(select AVG(preco) from produto);

select nome from cliente
where cidade in 
			(select cidade from cliente
            group by cidade having count(*) = 1);

select * from produto
where preco in
			(select preco from produto
			group by preco having count(*) > 1);
            
select * from pedido
where valor_total >
				(select AVG(valor_total) from pedido);

select nome from cliente 
where id not in 
				(select cliente_id from pedido);