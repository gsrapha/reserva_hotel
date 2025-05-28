/* -------------------------------------------------
   5. CONSULTAS SQL EXIGIDAS
------------------------------------------------- */

-- 6.1 Total gasto por cada hóspede
SELECT h.nome AS Hospede, SUM(p.valor) AS TotalGasto
FROM hospede h
JOIN reserva r ON r.id_hospede = h.id
JOIN pagamento p ON p.id_reserva = r.id
GROUP BY h.id;

-- 6.2 Total arrecadado por categoria de quarto
SELECT q.categoria, SUM(p.valor) AS TotalArrecadado
FROM quarto q
JOIN reserva_quarto rq ON rq.id_quarto = q.id
JOIN pagamento p ON p.id_reserva = rq.id_reserva
GROUP BY q.categoria;

-- 6.3 Hóspedes que gastaram acima da média
SELECT nome, total_gasto
FROM (
    SELECT h.nome, SUM(p.valor) AS total_gasto
    FROM hospede h
    JOIN reserva r ON r.id_hospede = h.id
    JOIN pagamento p ON p.id_reserva = r.id
    GROUP BY h.id
) AS sub
WHERE total_gasto > (SELECT AVG(valor) FROM pagamento);
