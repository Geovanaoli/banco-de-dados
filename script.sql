CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  estoque INT
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  produto_id INT,
  quantidade INT,
  data_pedido DATE,
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Café Expresso', 12.50, 30),
(2, 'Capuccino', 15.00, 20),
(3, 'Bolo de Cenoura', 8.00, 10);

INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-09-01'),
(2, 3, 1, '2025-09-02'),
(3, 2, 3, '2025-09-02');
--script atualizado em 03/09
