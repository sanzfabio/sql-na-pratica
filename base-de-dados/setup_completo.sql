-- ====================================================================
-- SQL na Prática - Setup do Banco Relacional
-- ====================================================================

-- 1. Tabela de Clientes
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome_cliente TEXT,
    estado_uf TEXT
);

-- 2. Tabela de Vendedores
CREATE TABLE vendedores (
    id_vendedor INTEGER PRIMARY KEY,
    nome_vendedor TEXT,
    meta_mensal DECIMAL(10,2)
);

-- 3. Tabela de Produtos (Dimensão)
CREATE TABLE produtos (
    id_produto INTEGER PRIMARY KEY,
    nome_produto TEXT,
    preco_unitario DECIMAL(10,2)
);

-- 4. Tabela Fato de Vendas
CREATE TABLE vendas (
    id_venda INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    id_vendedor INTEGER,
    id_produto INTEGER,
    categoria TEXT,
    valor_total DECIMAL(10,2),
    custo_total DECIMAL(10,2),
    data_venda DATE,
    meio_pagamento TEXT,
    parcelas INTEGER,
    status_pagamento TEXT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- ====================================================================
-- SQL na Prática - Setup de Dados Expandido (20 Registros)
-- ====================================================================

-- Populando Tabelas Dimensionais
INSERT INTO clientes VALUES (1, 'Tech Solutions', 'SP');
INSERT INTO clientes VALUES (2, 'Casa do Construtor', 'RJ');
INSERT INTO clientes VALUES (3, 'Logística Rápida', 'MG');
INSERT INTO clientes VALUES (4, 'Varejo Global', 'SP');

INSERT INTO vendedores VALUES (1, 'Ana Silva', 50000.00);
INSERT INTO vendedores VALUES (2, 'Carlos Souza', 45000.00);
INSERT INTO vendedores VALUES (3, 'Beatriz Lima', 60000.00);

INSERT INTO produtos VALUES (1, 'Monitor Dell', 1200.00);
INSERT INTO produtos VALUES (2, 'Cadeira Ergonômica', 800.00);
INSERT INTO produtos VALUES (3, 'Notebook Gamer', 4500.00);
INSERT INTO produtos VALUES (4, 'Teclado Mecânico', 300.00);

-- Populando 20 registros na Tabela Fato (vendas)
-- Formato: id, id_cliente, id_vendedor, id_produto, categoria, valor, custo, data, meio_pag, parc, status
INSERT INTO vendas VALUES 
(1, 1, 1, 1, 'Eletrônicos', 1200.00, 800.00, '2026-06-01', 'Pix', 1, 'Pago'),
(2, 2, 2, 2, 'Móveis', 800.00, 500.00, '2026-06-02', 'Cartão', 3, 'Pago'),
(3, 3, 3, 3, 'Eletrônicos', 4500.00, 3000.00, '2026-06-03', 'Cartão', 10, 'Pago'),
(4, 4, 1, 4, 'Eletrônicos', 300.00, 150.00, '2026-06-04', 'Pix', 1, 'Pago'),
(5, 1, 2, 2, 'Móveis', 800.00, 500.00, '2026-06-05', 'Boleto', 1, 'Pendente'),
(6, 2, 3, 1, 'Eletrônicos', 1200.00, 800.00, '2026-06-06', 'Cartão', 2, 'Pago'),
(7, 3, 1, 3, 'Eletrônicos', 4500.00, 3000.00, '2026-06-07', 'QRCode', 1, 'Pago'),
(8, 4, 2, 4, 'Eletrônicos', 300.00, 150.00, '2026-06-08', 'Pix', 1, 'Pago'),
(9, 1, 3, 2, 'Móveis', 800.00, 500.00, '2026-06-09', 'Cartão', 6, 'Pago'),
(10, 2, 1, 1, 'Eletrônicos', 1200.00, 800.00, '2026-06-10', 'Boleto', 1, 'Pendente'),
(11, 3, 2, 3, 'Eletrônicos', 4500.00, 3000.00, '2026-06-11', 'Cartão', 12, 'Pago'),
(12, 4, 3, 4, 'Eletrônicos', 300.00, 150.00, '2026-06-12', 'Pix', 1, 'Pago'),
(13, 1, 1, 2, 'Móveis', 800.00, 500.00, '2026-06-13', 'Cartão', 3, 'Estornado'),
(14, 2, 2, 1, 'Eletrônicos', 1200.00, 800.00, '2026-06-14', 'Pix', 1, 'Pago'),
(15, 3, 3, 3, 'Eletrônicos', 4500.00, 3000.00, '2026-06-15', 'Cartão', 10, 'Pago'),
(16, 4, 1, 2, 'Móveis', 800.00, 500.00, '2026-06-16', 'Boleto', 1, 'Pago'),
(17, 1, 2, 4, 'Eletrônicos', 300.00, 150.00, '2026-06-17', 'Pix', 1, 'Pago'),
(18, 2, 3, 3, 'Eletrônicos', 4500.00, 3000.00, '2026-06-18', 'Cartão', 12, 'Pago'),
(19, 3, 1, 1, 'Eletrônicos', 1200.00, 800.00, '2026-06-19', 'QRCode', 1, 'Pago'),
(20, 4, 2, 2, 'Móveis', 800.00, 500.00, '2026-06-20', 'Cartão', 6, 'Pago');
