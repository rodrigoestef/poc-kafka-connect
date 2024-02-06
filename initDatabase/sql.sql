CREATE DATABASE IF NOT EXISTS `teste`;
USE teste;

CREATE TABLE IF NOT EXISTS pessoa (
	id INT NOT NULL AUTO_INCREMENT,
  nome varchar(100) NULL,
	sobrenome varchar(100) NULL,
	apelido varchar(100) NULL,
	PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE data_nascimento (
	id int auto_increment NOT NULL,
	id_pessoa int NOT NULL,
	Nascimento varchar(100) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT data_nascimento_FK FOREIGN KEY (id_pessoa) REFERENCES teste.pessoa(id)
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
