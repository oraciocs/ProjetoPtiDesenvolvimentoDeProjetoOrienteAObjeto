-- Atualizar dados em Pessoa
UPDATE Pessoa SET nome = 'Novo Nome', endereco = 'Novo Endereço' WHERE id = ...;

-- Atualizar dados em Pessoa Física
UPDATE PessoaFisica SET cpf = '000.000.000-00', dataNascimento = '2000-01-01' WHERE id = ...;

-- Atualizar dados em Pessoa Jurídica
UPDATE PessoaJuridica SET cnpj = '00.000.000/0001-00', razaoSocial = 'Nova Razão Social' WHERE id = ...;

-- Atualizar dados em Fornecedor
UPDATE Fornecedor SET produto = 'Novo Produto' WHERE id = ...;

-- Atualizar dados em Professor
UPDATE Professor SET disciplina = 'Nova Disciplina' WHERE id = ...;

-- Atualizar dados em Aluno
UPDATE Aluno SET matricula = 'NovaMatricula', curso = 'Novo Curso' WHERE id = ...;

-- Atualizar dados em Funcionário
UPDATE Funcionario SET cargo = 'Novo Cargo' WHERE id = ...;

-- Atualizar dados em Biblioteca
UPDATE Biblioteca SET nome = 'Nova Biblioteca' WHERE id = ...;

-- Atualizar dados em Livro
UPDATE Livro SET autor = 'Novo Autor', isbn = 'Novo ISBN', status = 'Novo Status' WHERE id = ...;

-- Atualizar dados em Empréstimo
UPDATE Emprestimo SET dataEmprestimo = '2025-01-01', dataDevolucao = '2025-01-10', status = 'Novo Status' WHERE id = ...;
