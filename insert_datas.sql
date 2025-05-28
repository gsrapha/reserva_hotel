INSERT INTO hospede (nome, cpf, telefone, email) VALUES
('Ana Clara', '123.456.789-00', '(11)99999-0001', 'ana@example.com'),
('Bruno Lima', '987.654.321-00', '(21)98888-0002', 'bruno@example.com'),
('Carla Souza', '111.222.333-44', '(31)97777-0003', 'carla@example.com');

INSERT INTO funcionario (nome, cargo) VALUES
('Pedro Alves', 'Recepcionista'),
('João Silva', 'Gerente');

INSERT INTO quarto (numero, categoria, status, valor_diaria) VALUES
(101, 'Standard', 'disponivel', 200.00),
(102, 'Standard', 'disponivel', 200.00),
(201, 'Luxo', 'disponivel', 350.00),
(202, 'Luxo', 'disponivel', 350.00),
(301, 'Suite', 'disponivel', 500.00);

INSERT INTO reserva (data_inicio, data_fim, id_hospede, id_funcionario) VALUES
('2025-06-10', '2025-06-15', 1, 1),
('2025-07-01', '2025-07-05', 2, 2),
('2025-08-20', '2025-08-22', 3, 1);

INSERT INTO reserva_quarto (id_reserva, id_quarto) VALUES
(1, 1),
(1, 3),
(2, 4),
(3, 5);

INSERT INTO pagamento (valor, data, forma_pagamento, id_reserva) VALUES
(2750.00, '2025-06-10', 'Cartao', 1),
(1400.00, '2025-07-01', 'Pix', 2),
(1000.00, '2025-08-20', 'Dinheiro', 3);