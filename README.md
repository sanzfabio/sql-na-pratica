# Post #001 — Série SQL na Prática
## O Comando SELECT — Introdução ao SQL

**Autor:** Fabio Sanz  
**Data:** Abril 2026  
**Série:** SQL na Prática — Do básico ao aplicado  
**Plataforma:** LinkedIn + GitHub

---

## 📌 Resumo do Post

O SELECT é o comando mais fundamental do SQL. É sua pergunta direta ao banco de dados: 
**"Quais dados você tem?"**

Sem SELECT, você depende de relatórios prontos e não consegue responder perguntas de negócio 
diretamente da fonte. Dominar o SELECT é dominar a autonomia técnica.

**Link do post:** [Ver no LinkedIn](#)

---

## 🎯 Objetivo

Neste post, você aprendeu:
- ✅ O que o SELECT faz de verdade
- ✅ A sintaxe mínima (`SELECT` + `FROM`)
- ✅ Como explorar a estrutura de uma tabela com `sp_help`
- ✅ Um exemplo prático aplicado a finanças/FP&A

---

## 💻 Como Testar — Opção 1: SQLiteOnline (Recomendado)

### Passo 1: Acesse o SQLiteOnline
Abra [https://sqliteonline.com/](https://sqliteonline.com/) em uma nova aba.

### Passo 2: Copie e execute o script de criação
Copie todo o código do arquivo [`vendas_schema.sql`](./vendas_schema.sql) abaixo 
ou clique no link → Cole na query box do SQLiteOnline → Clique em **Run**.

```sql
-- Criar tabela de vendas
CREATE TABLE vendas (
    id INTEGER PRIMARY KEY,
    produto TEXT NOT NULL,
    categoria TEXT NOT NULL,
    quantidade INTEGER,
    valor_total DECIMAL(10, 2)
);

-- Inserir dados de exemplo
INSERT INTO vendas VALUES
(1, 'Notebook Dell XPS 13', 'Eletrônicos', 3, 9000.00),
(2, 'Mouse Logitech MX Master', 'Periféricos', 15, 450.00),
(3, 'Cadeira Ergonômica Herman Miller', 'Móveis', 5, 2500.00),
(4, 'Monitor Samsung 4K', 'Eletrônicos', 8, 3200.00),
(5, 'Teclado Mecânico Corsair', 'Periféricos', 12, 840.00);
```

### Passo 3: Execute o desafio do post
Copie a query abaixo e execute:

```sql
-- DESAFIO POST #001
-- Escreva uma query que mostre apenas PRODUTO e VALOR_TOTAL
-- Dica: use SELECT e FROM

-- SUA RESPOSTA AQUI:
```

**A resposta está abaixo** ⬇️

---

## ✅ Solução do Desafio

```sql
SELECT produto, valor_total
FROM vendas;
```

**Resultado esperado:**
| produto | valor_total |
|---------|-------------|
| Notebook Dell XPS 13 | 9000.00 |
| Mouse Logitech MX Master | 450.00 |
| Cadeira Ergonômica Herman Miller | 2500.00 |
| Monitor Samsung 4K | 3200.00 |
| Teclado Mecânico Corsair | 840.00 |

---

## 🎓 Explicação Técnica

### O que está acontecendo?

```sql
SELECT produto, valor_total   -- Quais colunas você quer ver?
FROM vendas;                   -- De qual tabela?
```

- **SELECT**: diz ao banco "traga para mim estas colunas"
- **FROM**: identifica de qual tabela extrair os dados
- `;` Marca o fim do comando

### Por que especificar apenas as colunas que precisa?

No post, aprendemos que `SELECT *` não é recomendado em produção porque:
- Retorna dados desnecessários → desperdiça IO
- Pode não aproveitar índices
- Se a tabela mudar, sua aplicação pode quebrar

**Melhor prática:** sempre liste as colunas específicas que você precisa.

---

## 🔍 Próximos Passos

### Post #002 — WHERE (Filtrando dados)
No próximo post, você aprenderá a usar **WHERE** para filtrar apenas os registros que importam:

```sql
SELECT produto, valor_total
FROM vendas
WHERE categoria = 'Eletrônicos';  -- Apenas eletrônicos
```

**Siga no LinkedIn** para não perder a série: [@fabioSanz](https://www.linkedin.com/in/fabiosanz/)

---

## 📚 Recursos Adicionais

- **Documentação SQLite:** [https://www.sqlite.org/index.html](https://www.sqlite.org/index.html)
- **SQL Server (sua ferramenta de trabalho):** [https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql)
- **Ferramenta para explorar tabelas no SQL Server:** `EXEC sp_help 'nome_da_tabela';`

---

## 📊 Contexto: Por que isso importa para Analistas de Dados/FP&A?

Como analista financeiro, você precisa responder perguntas como:
- "Qual foi meu faturamento por categoria no último mês?"
- "Quais produtos geraram maior receita?"
- "Quantas unidades foram vendidas?"

Antes de qualquer dashboard ou Power BI, tudo começa com uma query SELECT 
que puxa exatamente os dados que você precisa.

Dominar o SELECT é dominar a fonte da verdade.

---

## 🔗 Conecte-se

- **LinkedIn:** [@fabioSanz](https://www.linkedin.com/in/fabiosanz/)
- **GitHub:** [/fabioSanz](https://github.com/fabioandradesanz)
- **Série SQL na Prática:** [Todos os posts](#)

---

## 📝 Licença

Este conteúdo é educacional e gratuito. Sinta-se livre para usar, 
modificar e compartilhar para fins de aprendizado.

---

**Última atualização:** Abril 28, 2026  
**Status:** ✅ Publicado
