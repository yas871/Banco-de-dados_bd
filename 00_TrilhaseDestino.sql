-- Criação do Arquivo
create database TrilhaseDestino;
-- Acessando Arquivo 

use trilhasedestino;

CREATE TABLE Clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
sobrenome VARCHAR(255),
email VARCHAR(255),
telefone VARCHAR(20),
endereco VARCHAR(255)
);

CREATE TABLE Destinos (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_destino VARCHAR(255),
descricao TEXT,
preco DECIMAL(10, 2)
);

CREATE TABLE Pacotes (
id_pacote INT PRIMARY KEY AUTO_INCREMENT,
nome_pacote VARCHAR(255),
descricao TEXT,
preco DECIMAL(10, 2),
id_destino INT,
FOREIGN KEY (id_destino) REFERENCES Destinos(id_destino)
);
 
CREATE TABLE Reserva(
id_reserva INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_pacote INT,
data_reserva DATE,
status VARCHAR(20),
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_pacote) REFERENCES Pacotes(id_pacote)
);

CREATE TABLE Pagamentos (
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
id_reserva INT,
valor DECIMAL(10, 2),
data_pagamento DATE,
FOREIGN KEY (id_reserva) REFERENCES Reservas(id_reserva)
);

INSERT INTO Clientes (nome, sobrenome, email, telefone, endereco) VALUES
('João', 'Silva', 'joao.silva@example.com', '123456789', 'Rua 1, 123'),
('Maria', 'Souza', 'maria.souza@example.com', '987654321', 'Rua 2, 456'),
('Pedro', 'Oliveira', 'pedro.oliveira@example.com', '111222333', 'Rua 3, 789'),
('Ana', 'Santos', 'ana. santos@example.com', '444555666', 'Rua 4, 012'),
('Luiz', 'Gomes', 'luiz.gomes@example.com', '777888999', 'Rua 5, 345'),
('Beatriz', 'Rocha', 'beatriz.rocha@example.com', '222333444', 'Rua 6, 678'),
('Carlos', 'Mendes', 'carlos.mendes@example.com', '555666777', 'Rua 7, 901'),
('Eduardo', 'Ferreira', 'eduardo.ferreira@example.com', '888999000', 'Rua 8, 234'),
('Gabriela', 'Lima', 'gabriela.lima@example.com', '333444555', 'Rua 9, 567'),
('Hugo', 'Araújo', 'hugo.araujo@example.com', '666777888', 'Rua 10, 890');


















