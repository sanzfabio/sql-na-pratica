-- ====================================================================
-- SQL na Prática #006 - Resolução Oficial do Desafio
-- ====================================================================

SELECT 
    categoria, 
    AVG(valor_total) AS media_venda
FROM vendas
GROUP BY categoria
HAVING AVG(valor_total) > 1000.00;

-- ====================================================================
-- RESULTADO ESPERADO NO BANCO DE DADOS:
-- categoria   | media_venda
-- ------------|------------
-- Eletrônicos | 1647.60
-- Móveis      | 1056.66
-- ====================================================================
-- * ENTENDENDO A LÓGICA DO BANCO (POR TRÁS DOS PANOS):
--   O motor do SQL agrupou todas as linhas em "baldes" por categoria e 
--   calculou a média interna de cada um. O HAVING atuou da seguinte forma:
--
--   - Balde Eletrônicos: Total R$ 8.238,00 / 5 vendas = R$ 1.647,60 -> PASSOU! (Mantido)
--   - Balde Móveis: Total R$ 3.170,00 / 3 vendas = R$ 1.056,66      -> PASSOU! (Mantido)
--   - Balde Vestuário: Total R$ 770,00 / 3 vendas = R$ 256,66        -> ELIMINADO pelo HAVING
--   - Balde Educação: Total R$ 694,00 / 2 vendas = R$ 347,00         -> ELIMINADO pelo HAVING
--   - Balde Livros: Total R$ 79,00 / 1 venda = R$ 79,00              -> ELIMINADO pelo HAVING
-- ====================================================================
