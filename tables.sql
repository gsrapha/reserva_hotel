CREATE TABLE hospede (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50)
);

CREATE TABLE quarto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    categoria ENUM('Standard', 'Luxo', 'Suite') NOT NULL,
    status ENUM('disponivel', 'ocupado', 'manutencao') DEFAULT 'disponivel',
    valor_diaria DECIMAL(10,2) NOT NULL
);

CREATE TABLE reserva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    id_hospede INT NOT NULL,
    id_funcionario INT,
    FOREIGN KEY (id_hospede) REFERENCES hospede(id),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id)
);

CREATE TABLE reserva_quarto (
    id_reserva INT NOT NULL,
    id_quarto INT NOT NULL,
    PRIMARY KEY (id_reserva, id_quarto),
    FOREIGN KEY (id_reserva) REFERENCES reserva(id),
    FOREIGN KEY (id_quarto) REFERENCES quarto(id)
);

CREATE TABLE pagamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data DATE NOT NULL,
    forma_pagamento ENUM('Cartao', 'Dinheiro', 'Pix', 'Boleto') NOT NULL,
    id_reserva INT NOT NULL,
    FOREIGN KEY (id_reserva) REFERENCES reserva(id)
);