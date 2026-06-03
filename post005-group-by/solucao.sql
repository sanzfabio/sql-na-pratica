-- ====================================================================
-- SQL na Prática #005 - Resolução Oficial do Desafio
-- ====================================================================

SELECT 
    categoria, 
    COUNT(*) AS total_itens
FROM vendas
GROUP BY categoria
ORDER BY total_itens DESC;

-- ====================================================================
-- RESULTADO ESPERADO NO BANCO DE DADOS:
-- categoria   | total_itens
-- ------------|------------
-- Eletrônicos | 5
-- Móveis      | 3
-- Vestuário   | 3
-- Educação    | 2
-- Livros      | 1
-- ====================================================================
-- * Por que este é o resultado? O banco agrupou as linhas repetidas e:
--   - Contou 5 registos para 'Eletrônicos'
--   - Contou 3 registos para 'Móveis'
--   - Contou 3 registos para 'Vestuário'
--   - Contou 2 registos para 'Educação'
--   - Contou 1 registo para 'Livros'
-- * O ORDER BY garantiu que Eletrônicos ficasse no topo do ranking.
-- ====================================================================
