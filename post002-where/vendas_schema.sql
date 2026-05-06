-- ==============================================================================
-- SQL na Prática | Episódio #002 — WHERE
-- Arquivo: vendas_schema.sql
-- Descrição: Cria as tabelas e insere os dados para o desafio
-- Compatível com: SQL Server, PostgreSQL, MySQL, SQLite
-- ==============================================================================

-- ⚠️ Limpa tabelas anteriores se existirem
DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS recebimentos;
DROP TABLE IF EXISTS funcionarios;

-- ------------------------------------------------------------------------------
-- TABELA 1: vendas (usada no desafio principal)
-- ------------------------------------------------------------------------------
CREATE TABLE vendas (
    id_venda     INT            PRIMARY KEY,
    produto      VARCHAR(100)   NOT NULL,
    categoria    VARCHAR(50)    NOT NULL,
    quantidade   INT            NOT NULL,
    valor_total  DECIMAL(10, 2) NOT NULL
);

INSERT INTO vendas (id_venda, produto, categoria, quantidade, valor_total) VALUES
(1, 'Notebook Pro',       'Eletrônicos', 1, 4500.00),
(2, 'Cadeira Ergonômica', 'Móveis',      2, 1200.00),
(3, 'Mouse Sem Fio',      'Eletrônicos', 3,  150.00),
(4, 'Monitor Ultrawide',  'Eletrônicos', 1, 1300.00),
(5, 'Teclado Mecânico',   'Eletrônicos', 2,  600.00),
(6, 'Mesa de Escritório', 'Móveis',      1,  800.00),
(7, 'Fone de Ouvido',     'Eletrônicos', 1,  200.00),
(8, 'Webcam HD',          'Eletrônicos', 2,  350.00),
(9, 'Luminária LED',      'Móveis',      3,   90.00),
(10,'SSD Externo 1TB',    'Eletrônicos', 1,  750.00);

-- ------------------------------------------------------------------------------
-- TABELA 2: recebimentos (usada nos exemplos de BETWEEN, IN e FP&A)
-- ------------------------------------------------------------------------------
CREATE TABLE recebimentos (
    id_transacao    INT            PRIMARY KEY,
    canal           VARCHAR(50)    NOT NULL,
    valor_recebido  DECIMAL(10, 2) NOT NULL,
    data            DATE           NOT NULL,
    mes             INT            NOT NULL,
    ano             INT            NOT NULL,
    status          VARCHAR(20)    NOT NULL
);

INSERT INTO recebimentos (id_transacao, canal, valor_recebido, data, mes, ano, status) VALUES
(101, 'PIX',              1500.00, '2026-02-15', 2,  2026, 'Pago'),
(102, 'Cartão de Crédito',  850.00, '2026-03-10', 3,  2026, 'Pago'),
(103, 'Boleto',            2100.00, '2026-05-20', 5,  2026, 'Pago'),
(104, 'Cartão de Débito',   400.00, '2026-06-05', 6,  2026, 'Pendente'),
(105, 'Transferência',      750.00, '2026-07-12', 7,  2026, 'Pendente'),
(106, 'PIX',              3000.00, '2026-04-18', 4,  2026, 'Pago'),
(107, 'Boleto',             950.00, '2025-12-01', 12, 2025, 'Pago'),
(108, 'PIX',              1800.00, '2026-01-08', 1,  2026, 'Pago'),
(109, 'Cartão de Crédito',  320.00, '2026-08-22', 8,  2026, 'Cancelado'),
(110, 'Boleto',            1250.00, '2026-03-30', 3,  2026, 'Pago');

-- ------------------------------------------------------------------------------
-- TABELA 3: funcionarios (usada nos exemplos de AND, OR e comparação)
-- ------------------------------------------------------------------------------
CREATE TABLE funcionarios (
    id            INT            PRIMARY KEY,
    nome          VARCHAR(100)   NOT NULL,
    departamento  VARCHAR(50)    NOT NULL,
    salario       DECIMAL(10, 2) NOT NULL,
    status        VARCHAR(20)    NOT NULL
);

INSERT INTO funcionarios (id, nome, departamento, salario, status) VALUES
(1, 'Ana Silva',      'Financeiro', 5500.00, 'ativo'),
(2, 'Carlos Souza',   'TI',         4500.00, 'ativo'),
(3, 'Mariana Santos', 'Financeiro', 3800.00, 'ativo'),
(4, 'João Pedro',     'RH',         3200.00, 'inativo'),
(5, 'Analu Costa',    'Vendas',     6000.00, 'ativo'),
(6, 'Rafael Lima',    'TI',         5200.00, 'ativo'),
(7, 'Beatriz Nunes',  'RH',         4100.00, 'inativo'),
(8, 'Pedro Alves',    'Financeiro', 4800.00, 'ativo');

-- ==============================================================================
-- ✅ Schema criado com sucesso. Execute desafio.sql para começar.
-- ==============================================================================
