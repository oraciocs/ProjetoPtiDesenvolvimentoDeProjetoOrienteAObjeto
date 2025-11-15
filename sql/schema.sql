CREATE TABLE Pessoa_Fisica (
    id_pf INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE,
    email VARCHAR(120),
    telefone VARCHAR(20)
);

CREATE TABLE Pessoa_Juridica (
    id_pj INT PRIMARY KEY AUTO_INCREMENT,
    razao_social VARCHAR(150) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    email VARCHAR(120),
    telefone VARCHAR(20)
);

-- ALUNO
CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    id_pf INT NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    curso VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_pf) REFERENCES Pessoa_Fisica(id_pf)
);

-- PROFESSOR
CREATE TABLE Professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    id_pf INT NOT NULL,
    especialidade VARCHAR(120),
    FOREIGN KEY (id_pf) REFERENCES Pessoa_Fisica(id_pf)
);

-- FUNCIONÁRIO
CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    id_pf INT NOT NULL,
    cargo VARCHAR(80),
    salario DECIMAL(10,2),
    FOREIGN KEY (id_pf) REFERENCES Pessoa_Fisica(id_pf)
);

-- FORNECEDOR (ligado a pessoa jurídica)
CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    id_pj INT NOT NULL,
    tipo VARCHAR(80),
    FOREIGN KEY (id_pj) REFERENCES Pessoa_Juridica(id_pj)
);

-- PATRIMÔNIO
CREATE TABLE Patrimonio (
    id_patrimonio INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(150) NOT NULL,
    estado VARCHAR(40),
    valor DECIMAL(10,2),
    data_aquisicao DATE
);

-- COMPRA
CREATE TABLE Compra (
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_fornecedor INT NOT NULL,
    data_compra DATE NOT NULL,
    valor_total DECIMAL(12,2),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

-- ITENS DA COMPRA
CREATE TABLE Item_Compra (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_compra INT NOT NULL,
    descricao VARCHAR(150),
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra)
);

-- LIVROS
CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    ano INT,
    quantidade INT NOT NULL
);

-- EMPRÉSTIMOS
CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT NOT NULL,
    id_aluno INT NOT NULL,
    data_saida DATE NOT NULL,
    data_retorno DATE,
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);

-- CONTROLE FINANCEIRO
CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_pf INT,
    id_pj INT,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE NOT NULL,
    tipo VARCHAR(40), -- mensalidade, compra, serviço, salário
    FOREIGN KEY (id_pf) REFERENCES Pessoa_Fisica(id_pf),
    FOREIGN KEY (id_pj) REFERENCES Pessoa_Juridica(id_pj)
);
