-- ====================================================================
-- SQL na Prática #008 - Solução Oficial do Desafio e Caso FP&A
-- ====================================================================

-- [GABARITO DO DESAFIO] - Produtos sem Venda (Logística)
SELECT p.nome_produto
FROM produtos p
LEFT JOIN vendas v
  ON p.id_produto = v.id_produto
WHERE v.id_produto IS NULL;

-- Resultado esperado:
-- nome_produto
-- -----------------
-- Monitor UltraWide


-- [EXTRA] - Caso Real do CFO (Clientes Inativos de FP&A)
SELECT 
    c.nome_cliente,
    COALESCE(v.valor_total, 0) AS faturamento_limpo
FROM clientes c
LEFT JOIN vendas v
  ON c.id_cliente = v.id_cliente
WHERE v.id_cliente IS NULL;

-- Resultado esperado:
-- nome_cliente   | faturamento_limpo
-- ---------------|------------------
-- Daniela Lima   | 0.00
-- Eduardo Gomes  | 0.00
