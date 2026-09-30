### 2️⃣ `desafio.sql`
```sql
-- ============================================================================ 
-- SQL NA PRÁTICA #009 | SUBCONSULTAS (SUBQUERIES) 
-- Autor: Fábio Sanz 
-- Repositório: https://github.com/sanzfabio/sql-na-pratica 
-- ============================================================================ 
-- 🎯 DESAFIO ANALYTICS: 
-- O time de FP&amp;A precisa mapear todas as vendas individuais que superaram 
-- o ticket médio geral de todo o histórico cadastrado na base. 
-- 
-- Tabela utilizada: vendas 
-- Colunas necessárias: id\_venda, id\_cliente, valor\_total 
-- 
-- 🧩 SUA MISSÃO: 
-- Substitua os marcadores [OPERADOR], [FUNÇÃO] e [TABELA] para tornar a query válida. 
-- 
============================================================================ 

SELECT 
  id_venda, 
  id_cliente, 
  valor_total
FROM 
  vendas 
WHERE 
  valor_total [OPERADOR] ( 
      SELECT [FUNÇÃO](valor_total) 
      FROM [TABELA] 
  ) 
ORDER BY  
  valor_total DESC; 

-- ============================================================================ 

-- 💡 DICAS PARA PREENCHIMENTO: 
-- 1. [OPERADOR]: Qual operador relacional compara se o valor é estritamente maior? 
-- 2. [FUNÇÃO]: Qual função de agregação calcula a média de uma coluna no SQL? 
-- 3. [TABELA]: Qual é a tabela fonte de onde calculamos a média geral? 

-- ============================================================================
