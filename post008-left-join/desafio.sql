-- ====================================================================
-- SQL na Prática #008 - O Mini Desafio (Tabelas: produtos & vendas)
-- ====================================================================
-- Missão Logística: Escreva a query que retorne o nome de todos os
-- produtos cadastrados que nunca registraram nenhuma venda.
--
-- Dica: Substitua a lacuna "_________" pelo campo ideal da tabela da DIREITA.
-- ====================================================================

SELECT p.nome_produto
FROM produtos p
 _________ JOIN vendas v
  ON p. _________ = v. _________
WHERE _________ IS NULL;
