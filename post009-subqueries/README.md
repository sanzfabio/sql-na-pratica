# 📊 SQL na Prática #009 | Subconsultas (Subqueries) 
Bem-vindo ao repositório do **Episódio #009** da série **SQL na Prática**! Neste capítulo, abordamos a transição do `SELECT` básico para consultas aninhadas (**Subqueries**), resolvendo o clássico erro de tentar usar funções de agregação (como `AVG()`) diretamente na cláusula `WHERE`. 

---

## 🎯 O Desafio de Negócio (FP&A / Analytics)

O CFO precisa identificar todas as **vendas individuais cujo valor seja estritamente superior ao ticket médio histórico** da empresa.

### 🛑 O Erro Clássico Ao tentar responder isso diretamente, a tendência do analista iniciante é escrever:

```
```sql
SELECT id_venda, valor_total 
FROM vendas 
WHERE valor_total > AVG(valor_total); -- ❌ ERRO DE SINTAXE!

```

O banco de dados rejeita essa instrução porque **funções de agregação não podem ser avaliadas linha a linha no** **WHERE** **sem um agrupamento prévio**.

### 💡 A Solução: Pensar de Dentro para Fora

Usamos uma **Subconsulta** no `WHERE` para calcular primeiro a média global e depois usar esse valor dinâmico como critério de filtragem:

```
SELECT id_venda, id_cliente, valor_total 
FROM vendas 
WHERE valor_total &gt; (
    SELECT AVG(valor_total) 
    FROM vendas
) 
ORDER BY valor_total DESC;

```

---

## 📁 Estrutura deste Repositório

| Arquivo       | Descrição                                                      |
| ------------- | -------------------------------------------------------------- |
| `desafio.sql` | Script com o desafio prático e lacunas para você preencher.    |
| `solucao.sql` | Gabarito oficial com a query completa comentada linha a linha. |
| `README.md`   | Documentação do desafio e conceitos aplicados.                 |

---

## 🛠️ Como Executar na Sua Máquina ou online

1. **Setup da Base de Dados**: Certifique-se de carregar os scripts da pasta raiz do projeto [/base-de-dados/datasets](../../base-de-dados/datasets), especialmente o arquivo:
  * `04_vendas.sql`
2. **Testando o Desafio**: Execute o arquivo `desafio.sql` no seu SGBD de preferência (MySQL, PostgreSQL, SQL Server, BigQuery, DBeaver, etc.) e complete o código.
3. **Validação**: Compare o seu resultado com o arquivo `solucao.sql`.
4. **Você pode também acessar o editor online:** Abra o [SQLiteOnline.com](https://sqliteonline.com/).
    
---

## 🧠 Destaques Conceituais deste Episódio

1. **Regra de Ouro**: Pense de dentro para fora — o banco resolve primeiro a consulta interna (entre parênteses `()`) e repassa o resultado para a consulta externa.
2. **As 3 Arenas das Subqueries**:
  * `WHERE`: Filtro dinâmico com métrica global.
  * `FROM`: Tabela derivada criada em tempo de execução (exige *alias* com `AS`).
  * `SELECT`: Métrica escalar exibida lado a lado (*Real vs. Benchmark*).

---

## 🔗 Próximo Passo

No **Episódio #010**, vamos aprender a simplificar subconsultas complexas usando a cláusula **WITH** **(CTEs — Common Table Expressions)** para deixar seu código modular, legível e de fácil manutenção.

---

📌 *Desenvolvido por Fábio Sanz para a série SQL na Prática.*
