# 📦 Projeto Reserva de Hotel – Banco de Dados

Projeto acadêmico de Banco de Dados desenvolvido para simular um sistema de reservas de hotel. Inclui modelagem conceitual, lógica e física, além da implementação completa em SQL no MySQL Workbench.

Este projeto contempla a estrutura necessária para registrar hóspedes, reservas, quartos, pagamentos e funcionários responsáveis pelas reservas. A modelagem segue as boas práticas de normalização e utilização de relacionamentos com cardinalidade adequada.

---

## 📌 Funcionalidades contempladas:

- Cadastro de hóspedes e funcionários
- Reserva de múltiplos quartos por hóspede
- Registro de pagamento por reserva
- Relacionamento 1:N e N:N com tabelas associativas
- Consultas SQL com `GROUP BY`, subconsultas e agregações
- Stored Procedure para consulta por CPF do hóspede

---

## 📂 Estrutura do repositório (arquivos separados):

```
reserva-hotel-bd/
├── call_cpf.sql                  # Chamada de exemplo da stored procedure por CPF
├── create_db.sql                 # Criação do banco de dados
├── create_procedure.sql         # Criação da stored procedure sp_reservas_por_cpf
├── drop_procedure.sql           # Comando para remover a stored procedure se existir
├── drop_tables.sql              # Script para remover todas as tabelas
├── insert_datas.sql             # Inserts com dados de exemplo (hóspedes, reservas, quartos, etc.)
├── queries.sql                  # Consultas exigidas (GROUP BY, subconsulta)
├── sp_reserva_por_cpf.sql       # Consulta detalhada da stored procedure
├── tables.sql                   # Script com criação de todas as tabelas e FKs
├── modelo_conceitual_funcionario.png  # Diagrama ER (modelo conceitual)
```

---

## 🛠️ Tecnologias utilizadas:

- **MySQL Workbench 8.x**
- **Modelo ER (BrModelo / Graphviz)**
- **Linguagem SQL**

---

## 🎓 Finalidade acadêmica:

Projeto desenvolvido para avaliação na disciplina de Banco de Dados, com foco em modelagem e implementação prática de um sistema relacional realista.
