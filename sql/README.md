Projeto SQL – Sistema de Gestão

Este repositório contém um conjunto de scripts SQL organizados para criação, manipulação e consulta de dados de um sistema que envolve pessoas físicas, pessoas jurídicas, alunos, professores, funcionários, fornecedores, patrimônio, compras, livros, empréstimos e pagamentos.

A estrutura segue o padrão profissional para projetos SQL, separando a criação do banco, inserção de dados e consultas.

Estrutura do Repositório

/sql
├── schema.sql → Estrutura do banco (CREATE TABLE)
├── inserts.sql → Inserções de dados (INSERT)
├── updates.sql → Atualizações (UPDATE)
├── deletes.sql → Exclusões (DELETE)
└── queries.sql → Consultas úteis (SELECT)

Descrição dos Arquivos

### **schema.sql**
Contém toda a estrutura do banco, incluindo:
- Criação de tabelas 
- Chaves primárias 
- Chaves estrangeiras 
- Tipos de dados e restrições

---

### **inserts.sql**
Contém comandos `INSERT` para adicionar os primeiros registros nas tabelas do sistema.  
Os valores estão vazios para que você possa personalizar conforme a necessidade.

---

### **updates.sql**
Contém comandos `UPDATE` para alteração de registros já existentes.  
Utiliza `WHERE id = ?` para manter o padrão de segurança.

---

### **deletes.sql**
Contém comandos `DELETE` para remoção de registros.  
Assim como nos updates, os deletes utilizam `WHERE id = ?` para evitar exclusões indesejadas.

---

### **queries.sql**
Contém diversas consultas SQL úteis para testar o banco, entre elas:
- Listagem de pessoas físicas e jurídicas
- Consulta de alunos com informações pessoais
- Professores, funcionários e fornecedores
- Patrimônio e compras com fornecedores
- Livros e empréstimos
- Pagamentos
