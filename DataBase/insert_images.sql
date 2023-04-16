-- SQL SCRIPT COM APENAS OS GOVERNANTES E OS PAÍSES(E CAVALOS)
-- PARA CONFIGURAR PARA SEU LOCAL TROCAR "C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/" PELO SEU PATH ABSOLUTO

-- GOOVERNANTES OK

INSERT INTO imagem_governante VALUES( 1, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/ho_chin_min.jpg'));
INSERT INTO imagem_governante VALUES( 2, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/harry_s_truman.jpg'));
INSERT INTO imagem_governante VALUES( 3, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/mao_zedong.jpg'));
INSERT INTO imagem_governante VALUES( 4, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/richard_nixon.jpg'));
INSERT INTO imagem_governante VALUES( 5, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/saddam_hussein.jpg'));
INSERT INTO imagem_governante VALUES( 6, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/kim_ii_sung.png'));
INSERT INTO imagem_governante VALUES( 7, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/ruhollah_khomeini.jpg'));
INSERT INTO imagem_governante VALUES( 8, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/golda_meir.jpg'));
INSERT INTO imagem_governante VALUES( 9, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/leonid_brezhnev.jpg'));
INSERT INTO imagem_governante VALUES( 10, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/charles_de_gaule.jpg'));
INSERT INTO imagem_governante VALUES( 11, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Lideres/joao_goulart.jpg'));

-- PAISES OK

INSERT INTO imagem_pais VALUES( 1, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/vietna.png'));
INSERT INTO imagem_pais VALUES( 2, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/eua.png'));
INSERT INTO imagem_pais VALUES( 3, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/china.png'));
INSERT INTO imagem_pais VALUES( 5, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/iraque.png'));
INSERT INTO imagem_pais VALUES( 6, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/coreia_norte.png'));
INSERT INTO imagem_pais VALUES( 7, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/ira.png'));
INSERT INTO imagem_pais VALUES( 8, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/israel.png'));
INSERT INTO imagem_pais VALUES( 9, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/uniao_sovietica.png'));
INSERT INTO imagem_pais VALUES( 10, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/franca.png'));
INSERT INTO imagem_pais VALUES( 11, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/Paises/brasil.png'));

-- PARTIDO NOK

INSERT INTO imagem_partido VALUES( 1, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_vietna_comunista'));
INSERT INTO imagem_partido VALUES( 2, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_eua_democrata'));
INSERT INTO imagem_partido VALUES( 3, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_china_comunista'));
INSERT INTO imagem_partido VALUES( 4, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_eua_republicano'));
INSERT INTO imagem_partido VALUES( 5, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_iraque_baath'));
INSERT INTO imagem_partido VALUES( 6, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_coreia_trab'));
INSERT INTO imagem_partido VALUES( 7, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_ira_republicano'));
INSERT INTO imagem_partido VALUES( 8, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_israel_trabalhista'));
INSERT INTO imagem_partido VALUES( 9, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_uniao_sov_comunista'));
INSERT INTO imagem_partido VALUES( 10, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_franca_demo_republicano'));
INSERT INTO imagem_partido VALUES( 11, LOAD_FILE('C:/Users/victo/Desktop/USP/2023/1/bancoDados/DBHistorico/Images/hors.jpg'));-- /part_brasil_trab'));