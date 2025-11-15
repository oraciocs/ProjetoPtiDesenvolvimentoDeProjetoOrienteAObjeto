-- Listar todas as pessoas físicas
SELECT * FROM Pessoa_Fisica;

-- Listar todas as pessoas jurídicas
SELECT * FROM Pessoa_Juridica;

-- Listar alunos com suas informações pessoais
SELECT a.*, pf.nome, pf.cpf
FROM Aluno a
JOIN Pessoa_Fisica pf ON pf.id = a.id_pf;

-- Listar professores com informações pessoais
SELECT p.*, pf.nome, pf.cpf
FROM Professor p
JOIN Pessoa_Fisica pf ON pf.id = p.id_pf;

-- Listar funcionários
SELECT f.*, pf.nome
FROM Funcionario f
JOIN Pessoa_Fisica pf ON pf.id = f.id_pf;

-- Listar fornecedores e suas empresas
SELECT f.*, pj.razao_social
FROM Fornecedor f
JOIN Pessoa_Juridica pj ON pj.id = f.id_pj;

-- Listar patrimônio
SELECT * FROM Patrimonio;

-- Listar compras com fornecedores
SELECT c.*, pj.razao_social
FROM Compra c
JOIN Fornecedor f ON f.id = c.id_fornecedor
JOIN Pessoa_Juridica pj ON pj.id = f.id_pj;

-- Listar itens de uma compra
SELECT ic.*, c.data_compra
FROM Item_Compra ic
JOIN Compra c ON c.id = ic.id_compra;

-- Listar livros
SELECT * FROM Livro;

-- Listar empréstimos com aluno e livro
SELECT e.*, l.titulo, a.matricula
FROM Emprestimo e
JOIN Livro l ON l.id = e.id_livro
JOIN Aluno a ON a.id = e.id_aluno;

-- Listar pagamentos
SELECT * FROM Pagamento;
