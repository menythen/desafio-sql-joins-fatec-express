# Desafio Final — JOINs em SQL

Projeto desenvolvido para a disciplina de Laboratório de Banco de Dados da FATEC.

---

## Objetivo

Desenvolver um banco de dados relacional utilizando MySQL e criar consultas SQL com JOINs para responder perguntas estratégicas de negócio.

O projeto foi desenvolvido utilizando Docker, MySQL e phpMyAdmin.

---

## Tecnologias Utilizadas

- MySQL 8
- Docker
- phpMyAdmin
- Git
- GitHub

---

## Estrutura do Banco de Dados

O banco `fatec_express` possui as seguintes tabelas:

- clientes
- vendedores
- produtos
- pedidos
- itens_pedido

---

## Relacionamentos

### pedidos

Relaciona:
- clientes
- vendedores

### itens_pedido

Relaciona:
- pedidos
- produtos

---

## Funcionalidades Desenvolvidas

### Consulta 1 — INNER JOIN

Consulta envolvendo múltiplas tabelas para calcular:

- subtotal do pedido
- valor do frete
- total final do pedido
- dados do cliente
- dados do vendedor

---

### Consulta 2 — LEFT JOIN + IS NULL

Consulta utilizada para identificar:

- clientes cadastrados que nunca realizaram pedidos

---

### Consulta 3 — JOIN estratégico

Consulta analítica para identificar:

- categoria de produto com maior receita

---

## Estrutura do Projeto

```text
fatec_express_sql
│
├── docker-compose.yml
├── fatec_express.sql
├── README.md
│
└── consultas
    ├── consulta_1_inner_join.sql
    ├── consulta_2_left_join.sql
    └── consulta_3_join_livre.sql