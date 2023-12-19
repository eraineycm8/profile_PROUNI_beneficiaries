CREATE SCHEMA profile_prouni_beneficiaries;

USE profile_prouni_beneficiaries;

CREATE TABLE dim_tempo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ano INT
);

CREATE TABLE dim_local (
    id_local INT AUTO_INCREMENT PRIMARY KEY,
    regiao VARCHAR(100),
    estado VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE dim_perfil_bolsa (
    id_perfil_bolsa INT AUTO_INCREMENT PRIMARY KEY,
    tp_bolsa VARCHAR(100),
    modalidade VARCHAR(100),
    turno VARCHAR(100)
);


CREATE TABLE dim_perfil_beneficiario (
    id_perfil_beneficiario INT AUTO_INCREMENT PRIMARY KEY,
    faixa_etaria VARCHAR(50),
    sexo VARCHAR(50),
    condicao_fisica VARCHAR(100),
    grupo_racial VARCHAR(50)
);