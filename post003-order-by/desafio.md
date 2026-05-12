# Desafio #003 — ORDER BY

## Contexto
Você trabalha na área financeira e precisa apresentar
os produtos mais caros da categoria Eletrônicos para
priorizar uma negociação de margem com fornecedores.

## Tabela: vendas
| Coluna      | Tipo     |
|-------------|----------|
| produto     | VARCHAR  |
| categoria   | VARCHAR  |
| valor_total | DECIMAL  |
| data_venda  | DATE     |

## Missão
Retorne apenas os produtos da categoria 'Eletrônicos'
com valor_total acima de R$ 500, ordenados do maior
para o menor valor.

## Dica
Você vai precisar combinar o que aprendeu no Ep. 002
(WHERE) com o ORDER BY do Ep. 003.

## Dados
- [BASE DE DADOS](base-de-dados/vendas.sql)
