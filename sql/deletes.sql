-- Deletar pessoa física
DELETE FROM Pessoa_Fisica
WHERE id = ?;

-- Deletar pessoa jurídica
DELETE FROM Pessoa_Juridica
WHERE id = ?;

-- Deletar aluno
DELETE FROM Aluno
WHERE id = ?;

-- Deletar professor
DELETE FROM Professor
WHERE id = ?;

-- Deletar funcionário
DELETE FROM Funcionario
WHERE id = ?;

-- Deletar fornecedor
DELETE FROM Fornecedor
WHERE id = ?;

-- Deletar patrimônio
DELETE FROM Patrimonio
WHERE id = ?;

-- Deletar compra
DELETE FROM Compra
WHERE id = ?;

-- Deletar item de compra
DELETE FROM Item_Compra
WHERE id = ?;

-- Deletar livro
DELETE FROM Livro
WHERE id = ?;

-- Deletar empréstimo
DELETE FROM Emprestimo
WHERE id = ?;

-- Deletar pagamento
DELETE FROM Pagamento
WHERE id = ?;
