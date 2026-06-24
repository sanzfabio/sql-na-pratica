-- ====================================================================
-- 📌 GABARITO OFICIAL — EPISÓDIO #008
-- Query de auditoria utilizando LEFT JOIN + IS NULL
-- ====================================================================

SELECT 
    p.id_produto,
    p.nome_produto,
    COALESCE(v.valor_total, 0) AS valor_venda
FROM produtos p
LEFT JOIN vendas v 
    ON p.id_produto = v.id_produto
WHERE v.id_produto IS NULL;
