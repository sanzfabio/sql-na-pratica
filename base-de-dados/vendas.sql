-- Base de dados: vendas
-- Usada nos Episódios 001, 002, 003 e seguintes

CREATE TABLE vendas (
    produto      VARCHAR(100),
    categoria    VARCHAR(50),
    valor_total  DECIMAL(10,2),
    data_venda   DATE
);

INSERT INTO vendas VALUES
('Notebook Pro',      'Eletrônicos',  3200.00, '2026-01-15'),
('Smart TV 55"',      'Eletrônicos',  2800.00, '2026-01-22'),
('Tablet Ultra',      'Eletrônicos',  1450.00, '2026-02-03'),
('Fone Bluetooth',    'Eletrônicos',   699.00, '2026-02-18'),
('Cabo HDMI',         'Eletrônicos',    89.00, '2026-03-01'),
('Cadeira Gamer',     'Móveis',       1800.00, '2026-01-10'),
('Mesa Escritório',   'Móveis',        950.00, '2026-02-14'),
('Poltrona',          'Móveis',        420.00, '2026-03-05'),
('Camisa Social',     'Vestuário',     180.00, '2026-01-28'),
('Tênis Esportivo',   'Vestuário',     350.00, '2026-02-09'),
('Mochila Executiva', 'Vestuário',     240.00, '2026-03-12'),
('Livro SQL Server',  'Livros',         79.00, '2026-01-05'),
('Curso Online BI',   'Educação',      497.00, '2026-02-20'),
('Planilha FP&A',     'Educação',      197.00, '2026-03-08');
