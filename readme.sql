-- CREATE TABLE leitores (
--     id SERIAL PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     cpf VARCHAR(11) UNIQUE NOT NULL,
--     telefone VARCHAR(20) NOT NULL,
--     data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE categorias (
--     id SERIAL PRIMARY KEY,
--     nome VARCHAR(50) UNIQUE NOT NULL
-- );

-- CREATE TABLE livros (
--     id SERIAL PRIMARY KEY,
--     categoria_id INT REFERENCES categorias(id),
--     titulo VARCHAR(150) NOT NULL,
--     isbn VARCHAR(20) UNIQUE NOT NULL,
--     taxa_diaria DECIMAL(10,2) CHECK (taxa_diaria > 0) NOT NULL,
--     disponivel BOOLEAN DEFAULT TRUE
-- );

-- CREATE TABLE emprestimos (
--     id SERIAL PRIMARY KEY,
--     leitor_id INT REFERENCES leitores(id),
--     data_emprestimo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     status VARCHAR(20) DEFAULT 'Ativo' CHECK (status IN ('Ativo', 'Devolvido', 'Atrasado'))
-- );

-- CREATE TABLE itens_emprestimo (
--     id SERIAL PRIMARY KEY,
--     emprestimo_id INT REFERENCES emprestimos(id),
--     livro_id INT REFERENCES livros(id),
--     quantidade INT CHECK (quantidade > 0) NOT NULL,
--     valor_diaria DECIMAL(10,2) CHECK (valor_diaria >= 0) NOT NULL
-- );

-- INSERT INTO categorias (nome) VALUES ('Ficção'), ('História'), ('Tecnologia');

-- INSERT INTO livros (categoria_id, titulo, isbn, taxa_diaria, disponivel) VALUES 
-- (1, 'O Senhor dos Anéis', '9780007525546', 7.50, TRUE),
-- (1, '1984', '9780451524935', 4.00, TRUE),
-- (3, 'Entendendo Algoritmos', '9788575225639', 6.00, TRUE);

-- INSERT INTO leitores (nome, email, cpf, telefone) VALUES 
-- ('Carlos Silva', 'carlos@email.com', '11122233344', '11999990000'),
-- ('Ana Lima', 'ana@email.com', '22233344455', '11988880000'),
-- ('Beatriz Costa', 'bea@email.com', '33344455566', '11977770000');

-- INSERT INTO emprestimos (leitor_id, status) VALUES 
-- (1, 'Devolvido'), (1, 'Ativo'), (2, 'Devolvido'), (3, 'Atrasado');

-- INSERT INTO itens_emprestimo (emprestimo_id, livro_id, quantidade, valor_diaria) VALUES 
-- (1, 1, 2, 7.50),
-- (2, 2, 1, 4.00),
-- (3, 3, 3, 6.00),
-- (4, 1, 1, 7.50);