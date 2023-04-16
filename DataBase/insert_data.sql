-- INSERT INTO partido all

INSERT INTO partido VALUES( 1, 'Partido Comunista do Vietnã', '1930-02-03', 1);
INSERT INTO partido VALUES( 2, 'Partido Democrata Americano', '1828-01-08', 2);
INSERT INTO partido VALUES( 3, 'Partido Comunista Chinês', '1921-07-01', 3);
INSERT INTO partido VALUES( 4, 'Partido Republicano Americano', '1854-03-20', 4);
INSERT INTO partido VALUES( 5, 'Partido Baath', '1947-04-07', 5);
INSERT INTO partido VALUES( 6, 'Partido dos Trabalhadores da Coreia', '1949-07-24', 6);
INSERT INTO partido VALUES( 7, 'Partido Republicano Islâmico', '1979-02-17', 7);
INSERT INTO partido VALUES( 8, 'Partido Trabalhista Israelita', '1968-01-21', 8);
INSERT INTO partido VALUES( 9, 'Partido Comunista da União Soviética', '1912-01-01', 9);
INSERT INTO partido VALUES( 10, 'União dos Democratas pela República', '1967-11-24', 10); 
INSERT INTO partido VALUES( 11, 'Partido Trabalhista Brasileiro', '1945-05-15', 11);

-- INSERT INTO pais ALL

INSERT INTO pais VALUES( 1, 'Vietnã', 'Ásia', 97.8, 1);
INSERT INTO pais VALUES( 2, 'Estados Unidos da América', 'América', 332.9, 2);
INSERT INTO pais VALUES( 3, 'República Popular da China', 'Ásia', 1400, 3);
INSERT INTO pais VALUES( 5, 'Iraque', 'Ásia', 41.2, 5);
INSERT INTO pais VALUES( 6, 'Coréia do Norte', 'Ásia', 25.8, 6);
INSERT INTO pais VALUES( 7, 'Irã', 'Ásia', 85.1, 7);
INSERT INTO pais VALUES( 8, 'Israel', 'Ásia', 9.4, 8);
INSERT INTO pais VALUES( 9, 'União Soviética', 'Ásia', 293.0, 9);
INSERT INTO pais VALUES( 10, 'França', 'Europa', 67.4, 10);
INSERT INTO pais VALUES( 11, 'Brasil', 'América', 213.3, 11);

-- INSERT INTO governante ALL

INSERT INTO governantes VALUES( '', 'id_governante', 'nome_governante', 'data_morte', 'data_nasc', 'id_partido'); 
INSERT INTO governante VALUES( 1, 'Ho Chi Minh', '1969-09-02', '1890-05-19', 1, 1);
INSERT INTO governante VALUES( 2, 'Harry S. Truman', '1972-12-26', '1884-05-08', 2, 2);
INSERT INTO governante VALUES( 3, 'Mao Zedong', '1976-09-09', '1893-12-26', 3, 3);
INSERT INTO governante VALUES( 4, 'Richard Nixon', '1994-04-22', '1913-01-09', 4, 4);
INSERT INTO governante VALUES( 5, 'Sadam Hussein', '2006-12-30', '1937-04-28', 5, 5);
INSERT INTO governante VALUES( 6, 'Kim Il-sung', '1994-07-08', '1912-04-15', 6, 6);
INSERT INTO governante VALUES( 7, 'Ruhollah Khomeini', '1989-06-03', '1902-09-24', 7, 7);
INSERT INTO governante VALUES( 8, 'Golda Meir', '1978-12-08', '1898-05-03', 8, 8);
INSERT INTO governante VALUES( 9, 'Leonid Brezhnev', '1982-11-10', '1906-12-19', 9, 9);
INSERT INTO governante VALUES( 10, 'Charles de Gaule', '1970-11-09', '1890-11-22', 10, 10);
INSERT INTO governante VALUES( 11, 'João Goulart', '1976-12-06', '1918-03-01', 11, 11);
-- INSERT INTO conflito ALL

INSERT INTO conflito VALUES( 1, 'Guerra do Vietnã', '1955-11-01', '1975-04-30');
INSERT INTO conflito VALUES( 2, 'Guerra da Algéria', '1954-11-01', '1962-03-19');
INSERT INTO conflito VALUES( 3, 'Guerra da Coréia', '1950-06-25', '1953-07-27');
INSERT INTO conflito VALUES( 4, 'Guerra do Golfo', '1990-08-02', '1991-02-28');
INSERT INTO conflito VALUES( 5, 'Guerra Irã-Iraque', '1980-09-22', '1988-08-20');
INSERT INTO conflito VALUES( 6, 'Guerra dos Seis Dias', '1967-06-05', '1967-06-10');
INSERT INTO conflito VALUES( 7, 'Guerra Afegã-Soviética', '1979-12-24', '1989-02-15');
INSERT INTO conflito VALUES( 8, 'Guerra do Yom-Kippur', '1973-10-06', '1973-10-26');
INSERT INTO conflito VALUES( 9, 'Guerra da Lagosta', '1969-03-15', '1969-03-17');
INSERT INTO conflito VALUES( 10, 'Guerra da Indochina', '1946-12-19', '1954-08-01');

-- INSERT INTO lideranca ALL

INSERT INTO lideranca VALUES( 1, 1, '1945-09-02', '1969-09-02');
INSERT INTO lideranca VALUES( 2, 2, '1945-04-12', '1953-01-20');
INSERT INTO lideranca VALUES( 3, 3, '1949-10-01', '1976-09-09');
INSERT INTO lideranca VALUES( 4, 2, '1969-01-20', '1974-08-09');
INSERT INTO lideranca VALUES( 5, 5, '1979-07-16', '2003-04-09');
INSERT INTO lideranca VALUES( 6, 6, '1948-09-09', '1994-07-08');
INSERT INTO lideranca VALUES( 7, 7, '1979-04-01', '1989-06-03');
INSERT INTO lideranca VALUES( 8, 8, '1969-03-17', '1974-06-11');
INSERT INTO lideranca VALUES( 9, 9, '1964-10-14', '1982-11-10');
INSERT INTO lideranca VALUES( 10, 10, '1958-06-01', '1969-04-28');
INSERT INTO lideranca VALUES( 11, 11, '1961-09-07', '1964-04-01');

-- INSERT INTO envolvimento ALL
INSERT INTO envolvimento VALUES( 1, 1);
INSERT INTO envolvimento VALUES( 2, 1);
INSERT INTO envolvimento VALUES( 10, 2);
INSERT INTO envolvimento VALUES( 2, 3);
INSERT INTO envolvimento VALUES( 6, 3);
INSERT INTO envolvimento VALUES( 5, 4);
INSERT INTO envolvimento VALUES( 2, 4);
INSERT INTO envolvimento VALUES( 5, 5);
INSERT INTO envolvimento VALUES( 7, 5);
INSERT INTO envolvimento VALUES( 8, 6);
INSERT INTO envolvimento VALUES( 9, 7);
INSERT INTO envolvimento VALUES( 8, 8);
INSERT INTO envolvimento VALUES( 11, 9);
INSERT INTO envolvimento VALUES( 10, 9);
INSERT INTO envolvimento VALUES( 10, 10);
INSERT INTO envolvimento VALUES( 1, 10);