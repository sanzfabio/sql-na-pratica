-- ====================================================================
-- SQL na Prática #006 - O Mini Desafio
-- ====================================================================
-- Missão Pricing: Escreva uma query que retorne a categoria e o seu 
-- ticket médio, mas traga apenas as categorias cuja média de venda 
-- individual seja estritamente maior que R$ 1.000,00.
--
-- Dica: Substitua as lacunas "______" aplicando o conceito do HAVING.
-- ====================================================================

SELECT 
    categoria, 
    ______(valor_total) AS media_venda
FROM vendas
GROUP BY categoria
HAVING ______ > 1000.00;
