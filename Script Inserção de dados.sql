CREATE SCHEMA IF NOT EXISTS E_Commerce_Online;
USE E_Commerce_Online;
INSERT INTO clientes (nome, email, tipo, data_cadastro)
VALUES 
  ('Marcio Tech', 'marcio@tech.com', 'PJ', NOW()),
  ('Ana Silva', 'ana@gmail.com', 'PF', NOW());
  
INSERT INTO Fornecedor (nome, cnpj, contato)
VALUES 
  ('Fornecedor X', '12.345.678/0001-99', 'contato@x.com'),
  ('Fornecedor Y', '98.765.432/0001-11', 'contato@y.com');
  
INSERT INTO Produto (nome, preco, idFornecedor)
VALUES 
  ('Mouse Gamer', 199.90, 1),
  ('Teclado Mecânico', 349.00, 2);
  
INSERT INTO Estoque (idProduto, quantidade)
VALUES 
  (1, 50),
  (2, 30);
  
INSERT INTO Pedido (data_pedido, status, idCliente)
VALUES 
  (NOW(), 'Em processamento', 1),
  (NOW(), 'Finalizado', 2);

