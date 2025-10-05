# 🛒 E-Commerce Online — Projeto SQL (DIO)

Este projeto simula o backend de um sistema de e-commerce, com foco na modelagem e manipulação de dados usando SQL. Ele foi desenvolvido como parte do bootcamp da Digital Innovation One (DIO), com o objetivo de aplicar conceitos de banco de dados relacional em um cenário prático.

---

## 📚 Sumário

- [Objetivo](#objetivo)
- [Tecnologias](#tecnologias)
- [Modelagem do Banco](#modelagem-do-banco)
- [Scripts SQL](#scripts-sql)
- [Consultas Realizadas](#consultas-realizadas)
- [Como Executar](#como-executar)
- [Exemplo de Saída](#exemplo-de-saída)
- [Aprendizados](#aprendizados)
- [Autor](#autor)

---

## 🎯 Objetivo

Construir um banco de dados relacional para um sistema de e-commerce que gerencie:

- Cadastro de clientes (PF e PJ)
- Produtos e fornecedores
- Controle de estoque
- Pedidos e itens de pedido
- Relatórios e consultas analíticas

---

## 🧰 Tecnologias

- **MySQL Workbench**
- **SQL padrão ANSI**
- **Modelo EER (diagrama entidade-relacionamento)**

---

## 🗂️ Modelagem do Banco

O banco é composto pelas seguintes tabelas:

| Tabela         | Descrição                                      |
|----------------|------------------------------------------------|
| `Clientes`     | Armazena dados de clientes PF e PJ             |
| `Fornecedor`   | Dados dos fornecedores dos produtos            |
| `Produto`      | Catálogo de produtos disponíveis               |
| `Estoque`      | Controle de quantidade por produto             |
| `Pedido`       | Pedidos realizados pelos clientes              |
| `Item_Pedido`  | Itens que compõem cada pedido                  |

Relacionamentos foram definidos com chaves primárias e estrangeiras para garantir integridade referencial.

---

## 📜 Scripts SQL

### `01_criacao_banco.sql`

- Criação do schema `E_Commerce_Online`
- Definição das tabelas e relacionamentos

### `02_insercao_dados.sql`

- Inserção de dados de teste para todas as tabelas
- Inclui clientes, fornecedores, produtos, estoque, pedidos e itens

### `03_consultas.sql`

- Consultas analíticas para extrair informações do banco

---

## 🔍 Consultas Realizadas

- **Query 1**: Lista todos os clientes
- **Query 2**: Filtra clientes do tipo PJ
- **Query 3**: Calcula o valor total de cada pedido
- **Query 4**: Lista produtos ordenados por preço
- *(Outras queries podem ser adicionadas conforme evolução do projeto)*

---

## ▶️ Como Executar

1. Abra o MySQL Workbench
2. Execute o script `01_criacao_banco.sql`
3. Execute o script `02_insercao_dados.sql`
4. Execute o script `03_consultas.sql` para visualizar os dados

---

## 📊 Exemplo de Saída 

```sql
SELECT 
  p.idPedido,
  SUM(ip.quantidade * ip.preco_unitario) AS total_pedido
FROM Pedido p
JOIN Item_Pedido ip ON p.idPedido = ip.idPedido
GROUP BY p.idPedido;

## 💡 Aprendizados
Durante o desenvolvimento deste projeto, foram aplicados e reforçados os seguintes conceitos:

Criação de banco de dados relacional com integridade referencial

Uso de comandos SQL como JOIN, GROUP BY, ORDER BY, ENUM, AUTO_INCREMENT

Tratamento de erros comuns como truncamento de dados e violação de chave estrangeira

Modelagem lógica e física de dados com diagrama EER

Escrita de consultas analíticas para relatórios gerenciais

Diagnóstico e correção de falhas em inserções e relacionamentos

Validação de dados com SELECT e testes de consistência

## 👨‍💻 Autor
Márcio Vaz
Projeto desenvolvido no contexto do bootcamp DIO — SQL para E-Commerce
📍 São Paulo, Brasil — Outubro/2025
📧 githubmarcio@gmail.com
🔗 LinkedIn (www.linkedin.com/in/marcioantoniovaz)
