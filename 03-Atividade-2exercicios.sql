-- EX01 BANCO DE DB_GENERATION_GAME_ONLINE

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_class VARCHAR(100) NOT NULL,
    type_attack VARCHAR(50) NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    char_name VARCHAR(250) NOT NULL,
    char_level INT NOT NULL,
    char_power INT NOT NULL,
    char_defense INT NOT NULL,
    class_id BIGINT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES tb_classes(id)
);


INSERT INTO tb_classes (name_class, type_attack) VALUES
('Guerreiro', 'Físico'),
('Mago', 'Mágico'),
('Arqueiro', 'Físico'),
('Assassino', 'Físico'),
('Clérigo', 'Mágico');

INSERT INTO tb_personagens (char_name, char_level, char_power, char_defense, class_id) VALUES
('Thorgar', 15, 2300, 90, 1),   -- Guerreiro
('Elandra', 20, 2000, 70, 2),   -- Mago
('Kael', 12, 1100, 3600, 3),      -- Arqueiro
('Shadow', 18, 1800, 2800, 4),    -- Assassino
('Lyanna', 22, 1900, 1500, 5),    -- Clérigo
('Drogon', 10, 2950, 2850, 1),     -- Guerreiro
('Seraphine', 25, 2100, 1000, 2),-- Mago
('Feyra', 14, 1300, 1700, 3); -- Arqueiro   

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE char_power > 2000;

SELECT * FROM tb_personagens WHERE char_defense >= 1000 AND char_defense <= 2000;

SELECT * FROM tb_personagens WHERE char_name LIKE '%C%';

SELECT char_name, char_level, char_power, char_defense, tb_classes.name_class, tb_classes.type_attack
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.class_id = tb_classes.id;

SELECT char_name, char_level, char_power, char_defense, tb_classes.id
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.class_id = tb_classes.id
WHERE tb_classes.id = 3;

SELECT tb_personagens.id , char_name, char_level, char_power, char_defense, tb_classes.name_class AS 'Class'
FROM tb_personagens LEFT JOIN tb_classes
ON tb_personagens.class_id = tb_classes.id;

-- EX06 BANCO DE DADOS DB_CURSO_DA_MINHA_VIDA


CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    nivel_dificuldade VARCHAR(50) NOT NULL
);


CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(250) NOT NULL,
    carga_horaria INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    instrutor VARCHAR(100) NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome_categoria, nivel_dificuldade) VALUES
('Programação', 'Avançado'),
('Design', 'Intermediário'),
('Marketing Digital', 'Básico'),
('Banco de Dados', 'Avançado'),
('Idiomas', 'Intermediário');


INSERT INTO tb_cursos (nome_curso, carga_horaria, valor, instrutor, categoria_id) VALUES
('Java Completo', 80, 1200.00, 'Carlos Souza', 1),       
('HTML e CSS do Zero', 40, 300.00, 'Mariana Silva', 1),  
('UX/UI Design', 60, 750.00, 'Fernanda Lima', 2),        
('Photoshop Essencial', 35, 450.00, 'João Pereira', 2),  
('SEO e Marketing Digital', 50, 650.00, 'Paula Castro', 3),
('MySQL Avançado', 70, 900.00, 'Rodrigo Mendes', 4),     
('Inglês para Negócios', 100, 1500.00, 'Sarah Johnson', 5), 
('Espanhol Intermediário', 80, 700.00, 'Miguel Torres', 5); 

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor > 500;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT tb_cursos.id, nome_curso, carga_horaria, valor, instrutor, tb_categorias.nome_categoria, tb_categorias.nivel_dificuldade
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.id, nome_curso, carga_horaria, valor, instrutor, tb_categorias.nome_categoria
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Programação';
