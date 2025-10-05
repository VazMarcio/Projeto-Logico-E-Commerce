CREATE SCHEMA IF NOT EXISTS E_Commerce_Online;
USE E_Commerce_Online;

-- Recuperar todos os dados da tabela Clientes
-- Aqui usamos SELECT * para trazer todos os campos da tabela
-- Essa consulta mostra todos os clientes cadastrados, com nome, email, tipo e data de cadastro.
SELECT * FROM clientes;

-- Filtra apenas os clientes do tipo PJ (Pessoa Jurídica)
-- WHERE é usado para aplicar condições nos dados
-- Aqui você vê apenas os clientes que são empresas (PJ), ignorando os do tipo PF.
select nome, tipo from clientes where tipo = 'PJ';

-- Atributos derivados com Sum
-- Calcula o valor total de cada pedido
-- Multiplica quantidade × preço unitário e soma por pedido
SELECT 
  p.idPedido,
  SUM(ip.quantidade * ip.preco_unitario) AS total_pedido
FROM Pedido p
JOIN Item_Pedido ip ON p.idPedido = ip.idPedido
GROUP BY p.idPedido;

-- Ordenações com Order By
-- Lista os produtos ordenados do mais caro para o mais barato
-- ORDER BY organiza os resultados com base em um campo
-- Você vê os produtos em ordem decrescente de preço, útil para destacar os mais caros.

SELECT nome, preco
FROM Produto
ORDER BY preco DESC;


SELECT * FROM Item_Pedido;
SELECT * FROM Pedido;

SELECT idPedido, idCliente FROM Pedido;


