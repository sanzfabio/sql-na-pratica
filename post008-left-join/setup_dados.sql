-- ====================================================================
-- SQL na Prática #008 - Script de Setup (LEFT JOIN Masterclass)
-- Execute este bloco para criar e popular o banco de testes.
-- ====================================================================

-- Limpeza de tabelas anteriores
DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS produtos;

-- 1. Criação das Tabelas
CREATE TABLE clientes (
    id_cliente   INT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    data_cadastro DATE
);

CREATE TABLE produtos (
    id_produto   INT PRIMARY KEY,
    nome_produto VARCHAR(100)
);

CREATE TABLE vendas (
    id_venda     INT PRIMARY KEY,
    id_cliente   INT,
    id_produto   INT,
    valor_total  DECIMAL(10,2),
    data_venda   DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- 2. População de Dados (Simulando o cenário de 500 leads vs 380 compradores)
INSERT INTO clientes VALUES 
(1, 'Ana Silva', '2026-01-10'),
(2, 'Bruno Costa', '2026-01-12'),
(3, 'Carlos Souza', '2026-01-15'),
(4, 'Daniela Lima', '2026-02-01'), -- Lead inativo (sem compras)
(5, 'Eduardo Gomes', '2026-02-05'); -- Lead inativo (sem compras)

INSERT INTO produtos VALUES
(101, 'Notebook Pro'),
(102, 'Teclado Mecânico'),
(103, 'Mouse sem Fio'),
(104, 'Monitor UltraWide'); -- Produto sem nenhuma venda

INSERT INTO vendas VALUES
(1001, 1, 101, 4500.00, '2026-01-15'),
(1002, 2, 102, 350.00,  '2026-01-18'),
(1003, 3, 103, 180.00,  '2026-01-22'),
(1004, 1, 102, 350.00,  '2026-02-02');

-- Teste de visualização inicial
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM vendas;
