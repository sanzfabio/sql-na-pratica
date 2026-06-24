-- ====================================================================
-- 📌 DESAFIO #008 — CLÁUSULA LEFT JOIN
-- Missão: Descobrir quais produtos do catálogo estão sem movimentação,
-- ou seja, nunca registraram nenhuma linha na tabela de vendas.
-- ====================================================================

SELECT 
    p.id_produto,
    p.nome_produto,
    COALESCE(v.valor_total, ______) AS valor_venda  -- 1. Converta o valor nulo para 0 caso queira exibir na tela
FROM produtos p
______ JOIN vendas v                                -- 2. Use a junção adequada para preservar todos os produtos
    ON p.id_produto = v.______                      -- 3. Identifique a coluna de ligação entre as tabelas
WHERE v.id_produto ______ ______;                    -- 4. Filtre apenas as linhas que NÃO encontraram correspondência
