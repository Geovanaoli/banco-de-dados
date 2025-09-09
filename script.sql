CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  telefone VARCHAR(20),
  data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) CHECK (preco > 0),
  estoque INT DEFAULT 0 CHECK (estoque >= 0)
);

CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT NOT NULL,
  data_pedido DATE DEFAULT CURRENT_DATE,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE itens_pedido (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pedido_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL CHECK (quantidade > 0),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO clientes (nome, email, telefone) VALUES
('Antonio Raydon', 'Raydon@email.com', '11999999999'),
('Leticia Tonisso', 'Tonisso@email.com', '11988888888'),
('Geovana da Silva', 'Silva@email.com', '11977777777');

INSERT INTO produtos (nome, preco, estoque) VALUES
('Café Expresso', 12.50, 30),
('Capuccino', 15.00, 20),
('Bolo de Cenoura', 8.00, 5),
('Suco de Laranja', 10.00, 10);

INSERT INTO pedidos (cliente_id, data_pedido) VALUES
(1, '2025-09-01'),
(2, '2025-09-02'),
(3, '2025-09-03');

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 2),
(2, 3, 1),
(2, 2, 3),
(3, 4, 2);