create table editoras(
    id serial PRIMARY KEY,
    nome VARCHAR(50));

create table autores(
    id serial PRIMARY KEY,
    nome VARCHAR(50));

create table livros(
    isbn CHAR(13) PRIMARY KEY, 
    titulo VARCHAR(50), 
    ano_publicacao INT, 
    qtd_estoque INT, 
    valor DECIMAL(10,2), 
    id_editora INT,
    FOREIGN KEY (id_editora) REFERENCES editoras (id));

create table livros_autores(
    isbn CHAR(13), 
    id_autor INT,
    PRIMARY KEY (isbn,id_autor),
    FOREIGN KEY (isbn) REFERENCES livros (isbn),
    FOREIGN KEY (id_autor) REFERENCES autores (id));
    
SELECT * from editoras;
SELECT * from autores ;
SELECT * from livros ;
SELECT isbn,id_autor from livros_autores;