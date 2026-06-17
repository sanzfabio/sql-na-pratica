-- 2. Tabela de Vendedores
CREATE TABLE vendedores (
    id_vendedor INTEGER PRIMARY KEY,
    nome_vendedor TEXT,
    meta_mensal DECIMAL(10,2)
);

-- Populando Tabela de Vendedores
INSERT INTO vendedores VALUES (1, 'Ana Silva', 50000.00);
INSERT INTO vendedores VALUES (2, 'Carlos Souza', 45000.00);
INSERT INTO vendedores VALUES (3, 'Beatriz Lima', 60000.00);
