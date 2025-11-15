-- Inserir pessoa física
INSERT INTO Pessoa_Fisica (nome, cpf, data_nascimento, email, telefone)
VALUES ();

-- Inserir pessoa jurídica
INSERT INTO Pessoa_Juridica (razao_social, cnpj, email, telefone)
VALUES ();

-- Inserir aluno
INSERT INTO Aluno (id_pf, matricula, curso)
VALUES ();

-- Inserir professor
INSERT INTO Professor (id_pf, especialidade)
VALUES ();

-- Inserir funcionário
INSERT INTO Funcionario (id_pf, cargo, salario)
VALUES ();

-- Inserir fornecedor
INSERT INTO Fornecedor (id_pj, tipo)
VALUES ();

-- Inserir patrimônio
INSERT INTO Patrimonio (descricao, estado, valor, data_aquisicao)
VALUES ();

-- Inserir compra
INSERT INTO Compra (id_fornecedor, data_compra, valor_total)
VALUES ();

-- Inserir item de compra
INSERT INTO Item_Compra (id_compra, descricao, quantidade, valor_unitario)
VALUES ();

-- Inserir livro
INSERT INTO Livro (titulo, autor, ano, quantidade)
VALUES ();

-- Inserir empréstimo
INSERT INTO Emprestimo (id_livro, id_aluno, data_saida, data_retorno)
VALUES ();

-- Inserir pagamento
INSERT INTO Pagamento (id_pf, id_pj, valor, data_pagamento, tipo)
VALUES ();
