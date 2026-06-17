-- 1. Tabela de Clientes
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome_cliente TEXT,
    estado_uf TEXT
);

-- Populando Tabelas Dimensionais
INSERT INTO clientes VALUES (1, 'Tech Solutions', 'SP');
INSERT INTO clientes VALUES (2, 'Casa do Construtor', 'RJ');
INSERT INTO clientes VALUES (3, 'Logística Rápida', 'MG');
INSERT INTO clientes VALUES (4, 'Varejo Global', 'SP');
