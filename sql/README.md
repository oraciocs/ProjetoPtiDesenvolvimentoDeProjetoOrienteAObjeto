===========================================
Sistema de Biblioteca – Projeto SQL
===========================================

Este repositório contém a modelagem e scripts SQL para um sistema de gerenciamento de biblioteca, baseado em um diagrama UML.  
O objetivo é organizar as entidades principais (Pessoa, Aluno, Professor, Funcionário, Livro, Biblioteca, Empréstimo, Fornecedor) e permitir operações de inserção, atualização, exclusão e consulta.

-------------------------------------------
Estrutura dos arquivos
-------------------------------------------
/sql
- schema.sql    → Criação das tabelas e definição dos relacionamentos .
- inserts.sql   → Comandos INSERT para popular as tabelas com dados iniciais.
- updates.sql   → Comandos UPDATE para modificar registros existentes.
- deletes.sql   → Comandos DELETE para remover registros.
- queries.sql   → Consultas SELECT úteis para visualizar informações do sistema.

## Estrutura dos arquivos

### 1. `schema.sql`
Contém toda a **definição da estrutura do banco de dados** (DDL).  
- Criação das tabelas: Pessoa, PessoaFisica, PessoaJuridica, Fornecedor, Professor, Aluno, Funcionario, Biblioteca, Livro, Emprestimo.  
- Definição de chaves primárias e estrangeiras.  
- Representa os relacionamentos e heranças do diagrama UML.

### 2. `insert_biblioteca.sql`
Contém os comandos **`INSERT`** para popular as tabelas com dados iniciais.  
- Permite cadastrar pessoas, alunos, professores, funcionários, fornecedores, bibliotecas, livros e empréstimos.  
- Usado para testes e validação do banco.

### 3. `update_biblioteca.sql`
Contém os comandos **`UPDATE`** para modificar registros existentes.  
- Exemplos de alteração de atributos em todas as tabelas (ex.: atualizar status de livro, cargo de funcionário, disciplina de professor, dados de pessoa).  
- Útil para simular mudanças no sistema.

### 4. `delete_biblioteca.sql`
Contém os comandos **`DELETE`** para remover registros.  
- Exemplos de exclusão em todas as tabelas (ex.: remover aluno, livro, empréstimo, fornecedor).  
- Usado para manutenção e limpeza de dados.

### 5. `queries.sql`
Contém consultas **`SELECT`** úteis para relatórios e testes.  
- Listar livros disponíveis.  
- Consultar empréstimos em andamento.  
- Ver alunos e seus cursos.  
- Listar professores e disciplinas.  
- Consultar fornecedores e produtos.  
- Relatórios de livros emprestados por aluno e quantidade de livros por biblioteca.
