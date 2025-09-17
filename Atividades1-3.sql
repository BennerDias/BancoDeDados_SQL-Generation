-- EX01

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	nome CHARACTER(250) NOT NULL,
    cargo CHARACTER(250) NOT NULL,
    salario DECIMAL(19,4) NOT NULL,
    data_admissao CHARACTER(250) NOT NULL
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
values ("João", 'Dev. Jr', 4500.95, '17/09/2025');

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
values ("Ronaldo", 'Dev. Pleno', 9100.95, '25/09/2020');

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
values ("Benner", 'Dev. Jr', 5200.95, '17/09/2024');

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
values ("Carlos Marques", 'Dev. Senior', 12900.95, '17/09/2015');

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
values ("Renato", 'P.O', 30900, '10/05/2015');

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
values ("Jorge", 'Porteiro', 1890.99, '30/07/2015');

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = 'Dev. Jr', salario= 4500.95 WHERE id = 8;

SELECT * FROM tb_colaboradores;

-- EX02

CREATE DATABASE db_motopecas;

USE db_motopecas;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	nome_peca CHARACTER(250) NOT NULL,
    marca CHARACTER(250) NOT NULL,
    valor DECIMAL(19,4) NOT NULL,
    moto CHARACTER(250) NOT NULL
);

INSERT INTO tb_produtos(nome_peca, marca, valor, moto) 
values ("Aba do tanque", "GEN", 189.90, "Honda/Titan 2021-2025"),
("Aba do tanque", "GEN", 189.90, "Honda/Titan 2021-2025"),
("Retrovisor esquerdo", "Fortcar", 59.90, "Honda/CG 160 Fan 2018-2024"),
("Farol dianteiro", "Magnetron", 320.00, "Yamaha/Fazer 250 2020-2025"),
("Carenagem lateral", "Pro Tork", 210.50, "Honda/Biz 125 2019-2023"),
("Painel digital", "Original Honda", 980.00, "Honda/XRE 300 2021-2025"),
("Jogo de juntas motor", "Vedamotors", 145.75, "Yamaha/Factor 150 2017-2024"),
("Paralama traseiro", "Pro Tork", 110.00, "Suzuki/Yes 125 2015-2020");

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 507.20 WHERE id = 8;

SELECT * FROM tb_produtos;

-- EX03

