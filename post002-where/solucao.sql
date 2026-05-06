-- ==============================================================================
-- SQL na Prática | Episódio #002 — WHERE
-- Arquivo: solucao.sql
-- Descrição: Soluções comentadas — tente o desafio antes de abrir este arquivo!
-- ==============================================================================

-- ==============================================================================
-- DESAFIO PRINCIPAL
-- ==============================================================================
-- Precisamos de 2 filtros simultâneos → usamos AND
-- Filtro 1: categoria igual a 'Eletrônicos' (texto → aspas simples)
-- Filtro 2: valor_total maior que 500 (número → sem aspas)

SELECT produto,
       valor_total
FROM   vendas
WHERE  categoria  = 'Eletrônicos'
  AND  valor_total > 500;

-- Resultado esperado (4 linhas):
-- Notebook Pro      | 4500.00
-- Monitor Ultrawide | 1300.00
-- Teclado Mecânico  |  600.00
-- SSD Externo 1TB   |  750.00
--
-- ✅ Mouse Sem Fio (150) e Fone de Ouvido (200) foram filtrados corretamente
--    pois não atingiram o valor mínimo de R$ 500.

-- ==============================================================================
-- EXTRA 1 — Recebimentos de 2026 acima de R$ 1.000
-- ==============================================================================
-- Dois filtros com AND + ORDER BY para ordenar do maior ao menor

SELECT canal,
       valor_recebido
FROM   recebimentos
WHERE  ano            = 2026
  AND  valor_recebido > 1000
ORDER BY valor_recebido DESC;

-- Resultado esperado (4 linhas):
-- PIX    | 3000.00
-- Boleto | 2100.00
-- PIX    | 1800.00
-- PIX    | 1500.00

-- ==============================================================================
-- EXTRA 2 — Primeiro semestre 2026, PIX ou Boleto
-- ==============================================================================
-- BETWEEN para intervalo de meses (inclusivo nos dois extremos)
-- IN para lista de canais — substitui múltiplos OR de forma limpa

SELECT *
FROM   recebimentos
WHERE  ano = 2026
  AND  mes BETWEEN 1 AND 6
  AND  canal IN ('PIX', 'Boleto');

-- Resultado esperado (4 linhas):
-- transações PIX e Boleto de janeiro a junho de 2026

-- ==============================================================================
-- EXTRA 3 — Financeiro ou TI, ativos, salário >= 4.500
-- ==============================================================================
-- Atenção: quando combinamos AND e OR, usamos parênteses para
-- garantir a precedência correta — sem eles, o AND pode "vazar"
-- para dentro do OR e gerar resultados inesperados.

SELECT nome,
       salario
FROM   funcionarios
WHERE  status       = 'ativo'
  AND  salario      >= 4500
  AND  (departamento = 'Financeiro' OR departamento = 'TI');

-- Alternativa mais limpa com IN (equivalente):
SELECT nome,
       salario
FROM   funcionarios
WHERE  status       = 'ativo'
  AND  salario      >= 4500
  AND  departamento  IN ('Financeiro', 'TI');

-- Resultado esperado (4 linhas):
-- Ana Silva    | 5500.00
-- Carlos Souza | 4500.00
-- Rafael Lima  | 5200.00
-- Ana Silva    | 5500.00  ← Ana também aparece pois é Financeiro + ativo

-- ==============================================================================
-- EXTRA 4 — Nomes que começam com 'A'
-- ==============================================================================
-- % substitui qualquer sequência de caracteres após o 'A'
-- Atenção: LIKE é case-sensitive em alguns bancos (PostgreSQL).
-- No SQL Server, o comportamento depende do collation da coluna.

SELECT nome,
       departamento
FROM   funcionarios
WHERE  nome LIKE 'A%';

-- Resultado esperado (3 linhas):
-- Ana Silva     | Financeiro
-- Analu Costa   | Vendas
-- (+ qualquer outro nome cadastrado começando com A)

-- ==============================================================================
-- 💡 DICA DE OURO (revisão)
-- ==============================================================================
-- A ordem de execução real do SQL é:
--
--   FROM        → 1. identifica a tabela
--   WHERE       → 2. filtra as linhas
--   SELECT      → 3. seleciona as colunas
--
-- O WHERE roda ANTES do SELECT.
-- Isso significa que o banco descarta as linhas que não passam no filtro
-- antes de processar qualquer coluna — o que melhora muito a performance
-- em tabelas com milhões de registros.
--
-- ==============================================================================
-- Próximo episódio: #003 — ORDER BY
-- Como ordenar resultados e criar rankings direto no SQL.
-- ==============================================================================
