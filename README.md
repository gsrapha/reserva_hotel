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

## 📂 Estrutura do repositório:

```
reserva-hotel-bd/
├── hotel_reserva_com_funcionario.sql         # Script SQL com tabelas, inserts e procedures
├── modelo_conceitual_funcionario.png         # Diagrama ER (modelo conceitual)
├── modelo_logico.png                         # Modelo lógico (opcional)
├── consultas_exigidas.sql                    # Consultas e stored procedure separadas
├── README.md                                 # Descrição e documentação do projeto
```

---

## 🛠️ Tecnologias utilizadas:

- **MySQL Workbench 8.x**
- **Modelo ER (BrModelo / Graphviz)**
- **Linguagem SQL**

---

## 🎓 Finalidade acadêmica:

Projeto desenvolvido para avaliação na disciplina de Banco de Dados, com foco em modelagem e implementação prática de um sistema relacional realista.
