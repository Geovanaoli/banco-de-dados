CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Notebook', 3500.00),
(2, 'Mouse', 80.00),
(3, 'Teclado', 150.00);

INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-09-01'),
(2, 2, 5, '2025-09-02'),
(3, 3, 1, '2025-09-03');