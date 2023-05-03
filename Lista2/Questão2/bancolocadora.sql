CREATE TABLE clientes(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	cpf CHAR(11) NOT NULL UNIQUE,
	data_cadastro date,
	cidade VARCHAR(50),
	uf CHAR(2)
);

CREATE TABLE categorias(
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE classes(
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE distribuidores(
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE filmes(
	id INT PRIMARY KEY,
	titulo VARCHAR(50) NOT NULL,
	id_distribuidor INT,
	ano_lancamento INT NOT NULL,
	id_categoria INT,
	id_classe INT,
	FOREIGN KEY (id_distribuidor) REFERENCES distribuidores(id),
	FOREIGN KEY (id_categoria) REFERENCES categorias(id),
	FOREIGN KEY (id_classe) REFERENCES classes(id)
);

CREATE TABLE locacoes (
	id INT PRIMARY KEY,
	id_cliente INT,
	id_filme INT,
	dt_locacao DATE,
	dt_devolucao_prevista DATE,
	dt_devolucao DATE,
	valor DECIMAL(10,2),
	FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	FOREIGN KEY (id_filme) REFERENCES filmes(id)
);
