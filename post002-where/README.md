# Episódio #002 — WHERE: Filtrando Dados como um Analista

> "Com WHERE você filtra na fonte e analisa só o que importa."

Aprenda a usar a cláusula WHERE para extrair exatamente o que precisa
do banco de dados — sem depender de filtros no Excel.

---

## 📂 Arquivos

| Arquivo | Descrição |
|---------|-----------|
| `vendas_schema.sql` | Cria a tabela e insere os dados do desafio |
| `desafio.sql` | O enunciado — tente resolver antes de ver a solução |
| `solucao.sql` | Solução comentada linha a linha |

---

## 🧠 O que você aprende neste episódio

### Operadores de Comparação
```sql
WHERE status = 'Pago'      -- igual
WHERE status <> 'Inativo'  -- diferente
WHERE valor > 1000         -- maior que
WHERE valor >= 500         -- maior ou igual
```

### AND e OR
```sql
WHERE departamento = 'TI' AND salario > 5000
WHERE status = 'Pago' OR status = 'Pendente'
```

### BETWEEN e IN
```sql
WHERE data BETWEEN '2026-01-01' AND '2026-12-31'
WHERE canal IN ('PIX', 'Cartão', 'Boleto')
```

### LIKE (Buscas Parciais)
```sql
WHERE nome LIKE 'Ana%'   -- % = qualquer sequência
WHERE nome LIKE 'A_1'    -- _ = exatamente 1 caractere
```

---

## 💡 Dica de Ouro

O WHERE é executado **antes** do SELECT.
O banco filtra as linhas primeiro — depois seleciona as colunas.
Isso impacta diretamente na **performance** da sua query.

---

## 🏆 Desafio

Tabela `vendas` com colunas: `produto`, `categoria`, `valor_total`.

**Missão:** escreva a query que retorne apenas produtos da categoria
`Eletrônicos` com `valor_total` acima de `500`.

→ Tente em `desafio.sql`, confira em `solucao.sql`.

---

## ➡️ Próximo episódio

**#003 — ORDER BY:** como ordenar resultados e criar rankings.

---

**Fabio Sanz** · Finance and Data Analytics · SQL na Prática
