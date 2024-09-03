/* Programação de Banco De Dados
Funções Nativas de Banco MySQL
*/
-- 1. Criando tabela medicoes_experimento 
CREATE TABLE medicoes_experimento (
repeticao INT,
valor_medico DECIMAL(10,4)
);
-- carga de dados 
 INSERT INTO medicoes_experimento (repeticao, valor_medico) VALUES
(1, 12.3454),
(2, 12.2354),
(3, 13.1354),
(4, 12.1767),
(5, 11.2827),
(6, 12.3849);
-- 2. Aplicando função para arredondamento de Valores 
 select * from medicoes_experimento;
 
 SELECT repeticao, ROUND(valor_medico) FROM medicoes_experimento;

--  2.1 Aplicando função de agregação, exibindo media dos valores de uma coluna(valor_medido)
SELECT AVG(valor_medico) FROM medicoes_experimento;

SELECT sujeito, AVG(valor_medido) FROM medicoes_experimentro GROUP BY sujeito;

-- 2.2 Apague a tabela
drop table medicoes_experimento ;

-- 2.3 Criando tabela medicoes_experimento
CREATE TABLE medicoes_experimento (
repeticao INT,
valor_medido DECIMAL(6,4),
sujeito CHAR(1)
);

-- 2.4 Carga de dados 
INSERT INTO medicoes_experimento (repeticao, valor_medido, sujeito) VALUES
(1, 12.3454, 'A'),
(2, 12.2354, 'A'),
(3, 13.1354, 'A'),
(4, 12.1767, 'A'),
(5, 11.2827, 'A'),
(6, 12.3849, 'A'),
(1, 13.3454, 'B'),
(2, 13.2354, 'B'),
(3, 14.1454, 'B'),
(4, 13.1567, 'B'),
(5, 12.2627, 'B'),
(6, 13.5649, 'B');

-- 2.5 Consultando registros da tabela
select * from medicoes_experimento;

-- 2.6 Consultando registros grupados com função de agregação
SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito; 








