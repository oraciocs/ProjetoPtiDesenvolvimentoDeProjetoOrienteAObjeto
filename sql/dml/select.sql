-- Selecionar pessoas físicas
SELECT * FROM Pessoa_Fisica;

-- Selecionar pessoas jurídicas
SELECT * FROM Pessoa_Juridica;

-- Selecionar alunos com dados da pessoa física
SELECT a.*, pf.*
FROM Aluno a
JOIN Pessoa_Fisica pf ON a.id_pf = pf.id_pf;

-- Selecionar professores
SELECT p.*, pf.*
FROM Professor p
JOIN Pessoa_Fisica pf ON p.id_pf = pf.id_pf;

-- Selecionar funcionários
SELECT f.*, pf.*
FROM Funcionario f
JOIN Pessoa_Fisica pf ON f.id_pf = pf.id_pf;

-- Selecionar fornecedores
SELECT f.*, pj.*
FROM Fornecedor f
JOIN Pessoa_Juridica pj ON f.id_pj = pj.id_pj;

-- Selecionar patrimônio
SELECT * FROM Patrimonio;

-- Selecionar compras com fornecedor
SELECT c.*, pj.razao_social
FROM Compra c
JOIN Fornecedor f ON c.id_fornecedor = f.id_fornecedor
JOIN Pessoa_Juridica pj ON f.id_pj = pj.id_pj;

-- Selecionar itens de compra
SELECT ic.*, c.data_compra
FROM Item_Compra ic
JOIN Compra c ON ic.id_compra = c.id_compra;

-- Selecionar livros
SELECT * FROM Livro;

-- Selecionar empréstimos
SELECT e.*, l.titulo, pf.nome
FROM Emprestimo e
JOIN Livro l ON e.id_livro = l.id_livro
JOIN Aluno a ON e.id_aluno = a.id_aluno
JOIN Pessoa_Fisica pf ON a.id_pf = pf.id_pf;

-- Selecionar pagamentos
SELECT * FROM Pagamento;
