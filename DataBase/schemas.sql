CREATE TABLE imagem_governante (
	id_img_gov INT PRIMARY KEY,
    img_gov BLOB
    );

CREATE TABLE governante (
    id_governante INT PRIMARY KEY,
    nome_governante VARCHAR(30),
    data_nasc DATE,
    data_morte DATE,
    id_partido INT,
    id_img_gov INT,
    FOREIGN KEY (id_img_gov) 
		REFERENCES imagem_governante (id_img_gov) 
		ON DELETE CASCADE
);

CREATE TABLE imagem_partido (
	id_img_part INT PRIMARY KEY,
    img_part BLOB
);

CREATE TABLE partido (
	id_partido INT PRIMARY KEY,
    nome_partido VARCHAR(50),
    data_fundacao DATE,
    id_img_part INT,
    FOREIGN KEY (id_img_part) 
		REFERENCES imagem_partido (id_img_part) 
		ON DELETE CASCADE
);

ALTER TABLE governante
ADD FOREIGN KEY (id_partido) 
	REFERENCES partido (id_partido) 
	ON DELETE SET NULL;

CREATE TABLE imagem_pais (
	id_img_pais INT PRIMARY KEY,
    img_pais BLOB
);

CREATE TABLE pais (
    id_pais INT PRIMARY KEY,
    nome_pais VARCHAR(30),
    continente VARCHAR(30),
    poulacao_milh FLOAT,
	id_img_pais INT ,
    FOREIGN KEY (id_img_pais)
		REFERENCES imagem_pais (id_img_pais)
		ON DELETE CASCADE
);

CREATE TABLE conflito (
    id_conflito INT PRIMARY KEY,
    nome_conflito VARCHAR(50),
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE lideranca (
    id_pais INT,
    id_governante INT,
    PRIMARY KEY (id_pais , id_governante),
    FOREIGN KEY (id_pais)
        REFERENCES pais (id_pais)
        ON DELETE CASCADE,
    FOREIGN KEY (id_governante)
        REFERENCES governante (id_governante)
        ON DELETE CASCADE,
	data_inicio_lid DATE,
	data_fim_lid DATE
);

CREATE TABLE envolvimento (
    id_pais INT,
    id_conflito INT,
    PRIMARY KEY (id_pais , id_conflito),
    FOREIGN KEY (id_pais)
        REFERENCES pais (id_pais)
        ON DELETE CASCADE,
	FOREIGN KEY (id_conflito)
        REFERENCES conflito (id_conflito)
        ON DELETE CASCADE
);
