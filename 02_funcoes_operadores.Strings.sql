/*  Programação de BAnco De Dados
Funções e operadores de Strings e expressões
*/
-- 01.
SELECT "Olá Mundo"; 

-- 01.1
SELECT CONCAT("Olá", "2024", "mundo");

-- 01.2
SELECT LOWER("Converte TUDO para minúscula");

-- 01.3
SELECT LPAD('123', 4, '0');

-- 01.4
SELECT ' string com espaço nas extremidades ';

-- 01.5
select TRIM('string com espaço nas extremidades');
 
 -- 01.6
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '\\d+');

-- 02

CREATE TABLE clientes_experimentos (
id INT PRIMARY KEY,
nome_completo VARCHAR(255),
email VARCHAR(255),
telefone VARCHAR(20)
);

-- 02.1
 INSERT INTO clientes_experimentos (id, nome_completo, email, telefone)
VALUES 
(1, 'João Pedro Silva', 'joao.pedro@gmail.com', '(11) 1234-5678'),
(2, 'Maria Luiza Oliveira', 'maria.luiza@yahoo.com', '(21) 9876-5432'),
(3, 'Carlos Eduardo Santos', 'carlos.eduardo@hotmail.com', '(31) 1111-2222'),
(4, ':Ana Beatriz Costa', 'ana.beatriz@gmail.com', '(41) 3333-4444'),
(5, 'Luíz Felipe Pereira', 'luiz.felipe@yahoo.com', '(51) 5555-6666'),
(6, 'Rafaela Cristina', 'rafela.cristina@hotmail', '(61) 7777-8888'),
(7, 'Pedro henrique Almeida', 'pedro.henrique@gmail.com', '(71) 9999-0000'),
(8, 'Gabriela Oliveira Lima', 'gabriela.oliveira@gmail.com', '(81) 1234-5678'),
(9, 'Felipe Augusto Rocha', 'felipe.augusto@hotmail.com', '(91) 9876-5432'),
(10, 'Isabela Cristina Ferreira', 'isabela.cristina@gmail.com', '(10) 1111-2222'),
(11, 'Chico Buarque', 'chico.buarque@gmail.com', '(11) 1234-5678'),
(12, 'Silva Buarque', 'silva.buarque@yahoo.com', '(21) 9876-5432'),
(13, 'Eduardo Bueno', 'eduardo.bueno@hotmail.com', '(31) 1111-2222'),
(14, 'Mestre Sprinter', 'mestre.sprinter@gmail.com', '(41) 3333-4444'),
(15, 'Dr. Coorper', 'dr.coorper@yahoo.com', '(51) 5555-6666');

select * from cliente_experimentos;

SELECT * from cliente_experimentos where nome_completo LIKE 'Dr.%';
SELECT * from cliente_experimentos where nome_completo LIKE '%ana%';















