-- Criar tabela de vendas
CREATE TABLE vendas (
    id INTEGER PRIMARY KEY,
    produto TEXT NOT NULL,
    categoria TEXT NOT NULL,
    quantidade INTEGER,
    valor_total DECIMAL(10, 2)
);

-- Inserir dados de exemplo
INSERT INTO vendas VALUES
(1, 'Notebook Dell XPS 13', 'Eletrônicos', 3, 9000.00),
(2, 'Mouse Logitech MX Master', 'Periféricos', 15, 450.00),
(3, 'Cadeira Ergonômica Herman Miller', 'Móveis', 5, 2500.00),
(4, 'Monitor Samsung 4K', 'Eletrônicos', 8, 3200.00),
(5, 'Teclado Mecânico Corsair', 'Periféricos', 12, 840.00);
