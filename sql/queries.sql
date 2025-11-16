-- ===============================
-- Consultas gerais
-- ===============================

-- 1. Listar todos os livros cadastrados
SELECT id, autor, isbn, status FROM Livro;

-- 2. Listar apenas os livros disponíveis
SELECT id, autor, isbn FROM Livro WHERE status = 'Disponível';

-- 3. Consultar todos os empréstimos realizados
SELECT id, aluno_id, livro_id, dataEmprestimo, dataDevolucao, status FROM Emprestimo;

-- 4. Consultar empréstimos em andamento
SELECT id, aluno_id, livro_id, dataEmprestimo, dataDevolucao
FROM Emprestimo
WHERE status = 'Em andamento';

-- 5. Listar alunos e seus cursos
SELECT Pessoa.nome, Aluno.matricula, Aluno.curso
FROM Pessoa
JOIN PessoaFisica ON Pessoa.id = PessoaFisica.id
JOIN Aluno ON PessoaFisica.id = Aluno.id;

-- 6. Listar professores e suas disciplinas
SELECT Pessoa.nome, Professor.disciplina
FROM Pessoa
JOIN PessoaFisica ON Pessoa.id = PessoaFisica.id
JOIN Professor ON PessoaFisica.id = Professor.id;

-- 7. Listar funcionários e seus cargos
SELECT Pessoa.nome, Funcionario.cargo
FROM Pessoa
JOIN PessoaFisica ON Pessoa.id = PessoaFisica.id
JOIN Funcionario ON PessoaFisica.id = Funcionario.id;

-- 8. Listar fornecedores e seus produtos
SELECT PessoaJuridica.razaoSocial, Fornecedor.produto
FROM PessoaJuridica
JOIN Fornecedor ON PessoaJuridica.id = Fornecedor.id;

-- 9. Consultar livros emprestados por um aluno específico
SELECT Pessoa.nome AS Aluno, Livro.autor, Livro.isbn, Emprestimo.dataEmprestimo
FROM Emprestimo
JOIN Livro ON Emprestimo.livro_id = Livro.id
JOIN Aluno ON Emprestimo.aluno_id = Aluno.id
JOIN PessoaFisica ON Aluno.id = PessoaFisica.id
JOIN Pessoa ON PessoaFisica.id = Pessoa.id
WHERE Aluno.id = ...;  -- substitua pelo ID do aluno

-- 10. Consultar quantidade de livros por biblioteca
SELECT Biblioteca.nome, COUNT(Livro.id) AS total_livros
FROM Biblioteca
LEFT JOIN Livro ON Biblioteca.id = Livro.biblioteca_id
GROUP BY Biblioteca.nome;
