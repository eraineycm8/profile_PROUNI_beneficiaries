CREATE SCHEMA profile_prouni_beneficiaries;

USE profile_prouni_beneficiaries;

CREATE TABLE dim_tempo (
    id_tempo INT AUTO_INCREMENT PRIMARY KEY,
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


CREATE TABLE fato_beneficios_prouni (
    id_tempo INT,
    id_local INT,
    id_perfil_bolsa INT,
    id_perfil_beneficiario INT,
    -- Metricas abaixo
    quantidade INT,
    PRIMARY KEY (id_tempo, id_local, id_perfil_bolsa, id_perfil_beneficiario),
    CONSTRAINT fk_tempo FOREIGN KEY (id_tempo) REFERENCES dim_tempo(id_tempo),
    CONSTRAINT fk_local FOREIGN KEY (id_local) REFERENCES dim_local(id_local),
    CONSTRAINT fk_perfil_bolsa FOREIGN KEY (id_perfil_bolsa) REFERENCES dim_perfil_bolsa(id_perfil_bolsa),
    CONSTRAINT fk_perfil_beneficiario FOREIGN KEY (id_perfil_beneficiario) REFERENCES dim_perfil_beneficiario(id_perfil_beneficiario)
);
