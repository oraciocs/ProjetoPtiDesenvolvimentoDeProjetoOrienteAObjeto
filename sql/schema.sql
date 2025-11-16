CREATE TABLE Pessoa (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    email VARCHAR(100)
);

CREATE TABLE PessoaFisica (
    id_pf INTEGER PRIMARY KEY,
    cpf VARCHAR(20) NOT NULL UNIQUE,
    dataNascimento DATE,
    FOREIGN KEY (id_pf) REFERENCES Pessoa(id)
);

CREATE TABLE PessoaJuridica (
    id_pj INTEGER PRIMARY KEY,
    cnpj VARCHAR(20) NOT NULL UNIQUE,
    razaoSocial VARCHAR(150),
    inscricaoEstadual VARCHAR(50),
    FOREIGN KEY (id_pj) REFERENCES Pessoa(id)
);

CREATE TABLE Fornecedor (
    id_fornecedor SERIAL PRIMARY KEY,
    produto VARCHAR(100),
    id_pj INTEGER,
    FOREIGN KEY (id_pj) REFERENCES PessoaJuridica(id_pj)
);

CREATE TABLE Livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(150),
    autor VARCHAR(100),
    isbn VARCHAR(40),
    status VARCHAR(30)
);

CREATE TABLE Biblioteca (
    id_biblioteca SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    localizacao VARCHAR(150)
);

CREATE TABLE BibliotecaLivro (
    id_biblioteca INTEGER,
    id_livro INTEGER,
    PRIMARY KEY (id_biblioteca, id_livro),
    FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca(id_biblioteca),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

CREATE TABLE Emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    dataEmprestimo DATE,
    dataDevolucao DATE,
    status VARCHAR(20),
    id_biblioteca INTEGER,
    id_livro INTEGER,
    FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca(id_biblioteca),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

CREATE TABLE Professor (
    id_professor INTEGER PRIMARY KEY,
    disciplina VARCHAR(100),
    cargaHoraria INTEGER,
    FOREIGN KEY (id_professor) REFERENCES PessoaFisica(id_pf)
);

CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    matricula VARCHAR(50),
    curso VARCHAR(100),
    status VARCHAR(30),
    FOREIGN KEY (id_aluno) REFERENCES PessoaFisica(id_pf)
);

CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    cargo VARCHAR(100),
    salario DOUBLE PRECISION,
    FOREIGN KEY (id_funcionario) REFERENCES PessoaFisica(id_pf)
);

CREATE TABLE FornecedorLivros (
    id_fornecedor INTEGER,
    id_livro INTEGER,
    PRIMARY KEY (id_fornecedor, id_livro),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);
