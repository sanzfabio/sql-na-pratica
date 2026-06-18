-- ====================================================================
-- 📌 DESAFIO #007 — CLÁUSULA INNER JOIN
-- Missão: Unificar a tabela fato de vendas com a dimensão de produtos
-- para trazer o nome legível e a performance financeira de cada item.
-- ====================================================================

SELECT 
    p.______,                      -- 1. Nome amigável do produto vindo da tabela de dimensão
    COUNT(*) AS qtd,               -- 2. Volume total de vendas (transações)
    SUM(______) AS receita         -- 3. Soma do valor total faturado
FROM vendas v
INNER JOIN ______ p                -- 4. Indique a tabela correta para fazer o cruzamento
    ON v.id_produto = p.______     -- 5. Defina a chave de amarração (ponto de encontro)
GROUP BY p.______                  -- 6. Aplique a Regra de Ouro do agrupamento por coluna normal
ORDER BY receita DESC;
