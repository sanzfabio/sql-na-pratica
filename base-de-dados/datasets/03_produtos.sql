-- 3. Tabela de Produtos (Dimensão)
CREATE TABLE produtos (
    id_produto INTEGER PRIMARY KEY,
    nome_produto TEXT,
    preco_unitario DECIMAL(10,2)
);
-- Populando Tabela de Produtos
INSERT INTO produtos VALUES (1, 'Monitor Dell', 1200.00);
INSERT INTO produtos VALUES (2, 'Cadeira Ergonômica', 800.00);
INSERT INTO produtos VALUES (3, 'Notebook Gamer', 4500.00);
INSERT INTO produtos VALUES (4, 'Teclado Mecânico', 300.00);
