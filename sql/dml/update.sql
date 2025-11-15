-- Update pessoa física
UPDATE Pessoa_Fisica
SET nome = '', cpf = '', data_nascimento = '', email = '', telefone = ''
WHERE id_pf = ;

-- Update pessoa jurídica
UPDATE Pessoa_Juridica
SET razao_social = '', cnpj = '', email = '', telefone = ''
WHERE id_pj = ;

-- Update aluno
UPDATE Aluno
SET matricula = '', curso = ''
WHERE id_aluno = ;

-- Update professor
UPDATE Professor
SET especialidade = ''
WHERE id_professor = ;

-- Update funcionário
UPDATE Funcionario
SET cargo = '', salario = 
WHERE id_funcionario = ;

-- Update fornecedor
UPDATE Fornecedor
SET tipo = ''
WHERE id_fornecedor = ;

-- Update patrimônio
UPDATE Patrimonio
SET descricao = '', estado = '', valor = , data_aquisicao = ''
WHERE id_patrimonio = ;

-- Update compra
UPDATE Compra
SET id_fornecedor = , data_compra = '', valor_total = 
WHERE id_compra = ;

-- Update item de compra
UPDATE Item_Compra
SET descricao = '', quantidade = , valor_unitario = 
WHERE id_item = ;

-- Update livro
UPDATE Livro
SET titulo = '', autor = '', ano = , quantidade = 
WHERE id_livro = ;

-- Update empréstimo
UPDATE Emprestimo
SET id_livro = , id_aluno = , data_saida = '', data_retorno = ''
WHERE id_emprestimo = ;

-- Update pagamento
UPDATE Pagamento
SET id_pf = , id_pj = , valor = , data_pagamento = '', tipo = ''
WHERE id_pagamento = ;
