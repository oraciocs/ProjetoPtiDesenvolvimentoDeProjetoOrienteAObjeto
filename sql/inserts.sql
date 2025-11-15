-- Inserir dados em Pessoa
INSERT INTO Pessoa (nome, endereco) VALUES (...);

-- Pessoa Física
INSERT INTO PessoaFisica (id, cpf, dataNascimento) VALUES (...);

-- Pessoa Jurídica
INSERT INTO PessoaJuridica (id, cnpj, razaoSocial) VALUES (...);

-- Fornecedor
INSERT INTO Fornecedor (id, produto) VALUES (...);

-- Professor
INSERT INTO Professor (id, disciplina) VALUES (...);

-- Aluno
INSERT INTO Aluno (id, matricula, curso) VALUES (...);

-- Funcionário
INSERT INTO Funcionario (id, cargo) VALUES (...);

-- Biblioteca
INSERT INTO Biblioteca (nome) VALUES (...);

-- Livro
INSERT INTO Livro (autor, isbn, status, biblioteca_id) VALUES (...);

-- Empréstimo
INSERT INTO Emprestimo (aluno_id, livro_id, dataEmprestimo, dataDevolucao, status) VALUES (...);
