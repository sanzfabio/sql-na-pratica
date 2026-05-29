-- ====================================================================
-- SQL na Prática #004 - Resolução Oficial do Desafio
-- ====================================================================

SELECT 
    SUM(valor_total) AS faturamento_fevereiro,
    COUNT(*) AS qtd_vendas_fevereiro
FROM vendas
WHERE data_venda BETWEEN '2026-02-01' AND '2026-02-28';

-- ====================================================================
-- RESULTADO ESPERADO NO BANCO DE DADOS:
-- faturamento_fevereiro | qtd_vendas_fevereiro
-- ----------------------|---------------------
-- 3946.00               | 5
-- ====================================================================
-- * Validação manual das linhas somadas (Mês 02):
--   - Tablet Ultra (1450.00)
--   - Fone Bluetooth (699.00)
--   - Mesa Escritório (950.00)
--   - Tênis Esportivo (350.00)
--   - Curso Online BI (497.00)
-- ====================================================================
