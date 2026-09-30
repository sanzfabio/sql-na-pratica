-- ============================================================================ 
-- SQL NA PRÁTICA #009 | GABARITO OFICIAL 
-- Autor: Fábio Sanz 
-- Repositório: https://github.com/sanzfabio/sql-na-pratica 
-- ============================================================================ 
-- 🎯 SOLUÇÃO DO DESAFIO: 
-- Consulta com Subquery na cláusula WHERE para filtragem dinâmica baseada 
-- na média global calculada em tempo de execução. 
-- ============================================================================ 

SELECT 
  id_venda, 
  id_cliente, 
  valor_total 
FROM 
  vendas
WHERE 
valor_total > ( 
      SELECT AVG(valor_total) 
      FROM vendas 
  ) 
ORDER BY 
  valor_total DESC; 

-- ============================================================================ 
-- 📌 EXPLICAÇÃO TÉCNICA (DISSECANDO A QUERY): 
-- 
-- 1. CAMADA INTERNA (SUBQUERY): 
--   (SELECT AVG(valor_total) FROM vendas)
--   -> O banco de dados calcula primeiro o valor escalar da média geral de vendas. 
-- 
-- 2. CAMADA EXTERNA (QUERY PRINCIPAL): 
--   WHERE valor_total > [MÉDIA_CALCULADA] 
--   -> O valor retornado pela subquery substitui dinamicamente a consulta interna, 
--     filtrando apenas as vendas estritamente maiores que essa média. 
-- 
-- 3. ORDENAÇÃO: 
--   ORDER BY valor_total DESC 
--   -> Organiza os resultados do maior para o menor valor para destacar os destaques. 
-- ============================================================================
