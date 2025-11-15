-- Atualizar pessoa física
UPDATE Pessoa_Fisica
SET nome = ?, cpf = ?, data_nascimento = ?, email = ?, telefone = ?
WHERE id = ?;

-- Atualizar pessoa jurídica
UPDATE Pessoa_Juridica
SET razao_social = ?, cnpj = ?, email = ?, telefone = ?
WHERE id = ?;

-- Atualizar aluno
UPDATE Aluno
SET id_pf = ?, matricula = ?, curso = ?
WHERE id = ?;

-- Atualizar professor
UPDATE Professor
SET id_pf = ?, especialidade = ?
WHERE id = ?;

-- Atualizar funcionário
UPDATE Funcionario
SET id_pf = ?, cargo = ?, salario = ?
WHERE id = ?;

-- Atualizar fornecedor
UPDATE Fornecedor
SET id_pj = ?, tipo = ?
WHERE id = ?;

-- Atualizar patrimônio
UPDATE Patrimonio
SET descricao = ?, estado = ?, valor = ?, data_aquisicao = ?
WHERE id = ?;

-- Atualizar compra
UPDATE Compra
SET id_fornecedor = ?, data_compra = ?, valor_total = ?
WHERE id = ?;

-- Atualizar item de compra
UPDATE Item_Compra
SET id_compra = ?, descricao = ?, quantidade = ?, valor_unitario = ?
WHERE id = ?;

-- Atualizar livro
UPDATE Livro
SET titulo = ?, autor = ?, ano = ?, quantidade = ?
WHERE id = ?;

-- Atualizar empréstimo
UPDATE Emprestimo
SET id_livro = ?, id_aluno = ?, data_saida = ?, data_retorno = ?
WHERE id = ?;

-- Atualizar pagamento
UPDATE Pagamento
SET id_pf = ?, id_pj = ?, valor = ?, data_pagamento = ?, tipo = ?
WHERE id = ?;
