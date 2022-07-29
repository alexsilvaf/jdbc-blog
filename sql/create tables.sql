create table clientes (
	idCliente INTEGER PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(50) NOT NULL,
    dataNascimento DATE NOT NULL,
    usuario VARCHAR(20) NOT NULL,
    senha VARCHAR(15) NOT NULL,
    tipo BIT(8)
);

create table materia (
	idMateria INTEGER PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    texto VARCHAR(2000) NOT NULL,
    idCliente INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);