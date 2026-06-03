-- ====================================================================
-- SQL na Prática #005 - O Mini Desafio
-- ====================================================================
-- Missão Analytics: Escreva uma query que retorne a quantidade total 
-- de itens vendidos quebrado por cada categoria, mostrando os 
-- resultados do maior volume para o menor.
--
-- Dica: Substitua as lacunas "______" para aplicar a Regra de Ouro.
-- ====================================================================

SELECT 
    categoria, 
    ______(*) AS total_itens
FROM vendas
GROUP BY ______
ORDER BY total_itens DESC;
