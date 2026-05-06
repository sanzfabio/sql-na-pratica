-- ==============================================================================
-- SQL na Prática | Episódio #002 — WHERE
-- Arquivo: desafio.sql
-- Descrição: Tente resolver antes de abrir solucao.sql 💪
-- ==============================================================================

-- ⚠️ Pré-requisito: rode vendas_schema.sql antes de executar este arquivo.

-- ==============================================================================
-- DESAFIO PRINCIPAL (Slide 9 do carrossel)
-- ==============================================================================
-- Tabela: vendas
-- Colunas disponíveis: id_venda, produto, categoria, quantidade, valor_total
--
-- MISSÃO: escreva uma query que retorne apenas
--   → produto e valor_total
--   → somente da categoria 'Eletrônicos'
--   → somente com valor_total ACIMA de R$ 500
--
-- Resultado esperado: 4 linhas
-- ==============================================================================

-- Escreva sua query aqui ↓




-- ==============================================================================
-- DESAFIOS EXTRAS (para quem quer ir além)
-- ==============================================================================

-- EXTRA 1 ─────────────────────────────────────────────────────────────────────
-- Tabela: recebimentos
-- Retorne canal e valor_recebido de transações do ano 2026
-- com valor_recebido acima de R$ 1.000
-- Ordene do maior para o menor valor (dica: ORDER BY valor DESC)




-- EXTRA 2 ─────────────────────────────────────────────────────────────────────
-- Tabela: recebimentos
-- Retorne todas as colunas de transações do primeiro semestre de 2026
-- feitas via PIX ou Boleto
-- (dica: combine BETWEEN com IN)




-- EXTRA 3 ─────────────────────────────────────────────────────────────────────
-- Tabela: funcionarios
-- Retorne nome e salario de funcionários ativos
-- do departamento Financeiro ou TI
-- com salario maior ou igual a R$ 4.500




-- EXTRA 4 ─────────────────────────────────────────────────────────────────────
-- Tabela: funcionarios
-- Retorne nome e departamento de funcionários
-- cujo nome começa com a letra 'A'
-- (dica: LIKE)




-- ==============================================================================
-- Resposta em: solucao.sql
-- Material completo: github.com/[seu-usuario]/sql-na-pratica
-- ==============================================================================
