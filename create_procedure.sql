DELIMITER $$

CREATE PROCEDURE sp_reservas_por_cpf(IN p_cpf VARCHAR(14))
BEGIN
  SELECT 
    h.nome AS Hospede,
    r.id AS ReservaID,
    r.data_inicio,
    r.data_fim,
    f.nome AS Funcionario_Responsavel,
    GROUP_CONCAT(q.numero) AS Quartos,
    SUM(q.valor_diaria * DATEDIFF(r.data_fim, r.data_inicio)) AS ValorEstimado
  FROM hospede h
  JOIN reserva r ON r.id_hospede = h.id
  JOIN funcionario f ON f.id = r.id_funcionario
  JOIN reserva_quarto rq ON rq.id_reserva = r.id
  JOIN quarto q ON q.id = rq.id_quarto
  WHERE h.cpf = p_cpf
  GROUP BY r.id;
END $$

DELIMITER ;