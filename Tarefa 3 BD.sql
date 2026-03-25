CREATE TABLE FUNCIONARIO(
	COD decimal(3) not null PRIMARY KEY,
    NOME varchar(40) not null,
    SALARIO decimal (9,2) not null,
    CARGO varchar(30) not null,
    CODDEPTO decimal (3) not null,
    COMISSAO decimal (9,2) not null
);

CREATE TABLE REQUISICAO(
	CODREQ decimal(3) not null PRIMARY KEY,
    CODFUNC decimal(3) not null,
    DATAREQ date not null
);

INSERT INTO FUNCIONARIO	(COD, NOME, SALARIO, CARGO, CODDEPTO, COMISSAO)
VALUES	(111, 'JOAO', 1000, 'Analista de Sistemas', 111, 100),
		(222, 'ANA', 2000, 'Vendedora', 222, 200),
        (333, 'LUIS', 3000, 'Analista de Sistemas', 111, 300),
		(144, 'MARIA', 1500, 'Analista de Sistemas', 111, 100),
        (515, 'ANGELA', 900, 'Vendedora', 222, 200),
        (166, 'LUIS RICARDO', 5000, 'Analista de Sistemas', 111, 300);
        
INSERT INTO REQUISICAO (CODREQ, CODFUNC, DATAREQ)
VALUES	(1, 111, "2004-05-01"),
		(2, 222, "2004-05-15"),
		(3, 111, "2004-05-10");

SELECT * FROM FUNCIONARIO;
SELECT 


DROP TABLE FUNCIONARIO;
DROP TABLE REQUISICAO;