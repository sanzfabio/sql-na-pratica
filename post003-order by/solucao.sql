-- Solução: Desafio #003 — ORDER BY
-- Série: SQL na Prática | Fábio Sanz

SELECT
    produto,
    categoria,
    valor_total
FROM vendas
WHERE  categoria  = 'Eletrônicos'
  AND  valor_total > 500
ORDER BY valor_total DESC;

-- Resultado esperado:
-- Notebook Pro    | Eletrônicos | 3.200,00
-- Smart TV 55"    | Eletrônicos | 2.800,00
-- Tablet Ultra    | Eletrônicos | 1.450,00
-- Fone Bluetooth  | Eletrônicos |   699,00
