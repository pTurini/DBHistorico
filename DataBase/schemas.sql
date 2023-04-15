CREATE TABLE governante (
    id_governante INT PRIMARY KEY,
    nome_governante VARCHAR(30),
    data_nasc DATE,
    data_morte DATE
);

CREATE TABLE pais (
    id_pais INT PRIMARY KEY,
    nome_pais VARCHAR(30),
    continente VARCHAR(30),
    poulacao_milh FLOAT
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
        ON DELETE CASCADE
);