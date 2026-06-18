-- ====================================================================
-- 📌 GABARITO OFICIAL — EPISÓDIO #007
-- Query perfeitamente otimizada com aliases e chaves de amarração
-- ====================================================================

SELECT 
    p.nome_produto,
    COUNT(*) AS qtd,
    SUM(v.valor_total) AS receita
FROM vendas v
INNER JOIN produtos p 
    ON v.id_produto = p.id_produto
GROUP BY p.nome_produto
ORDER BY receita DESC;
