DROP DATABASE IF EXISTS Erraldoiak;
CREATE DATABASE IF NOT EXISTS Erraldoiak;
USE Erraldoiak;
-- ----------------------------------------

CREATE TABLE IF NOT EXISTS Erraldoiak (
    ID_erraldoia INT AUTO_INCREMENT,
    Izena VARCHAR (50) NOT NULL,
    PRIMARY KEY (ID_erraldoia)
);

CREATE TABLE IF NOT EXISTS Dantzak (
    ID_dantzak INT AUTO_INCREMENT,
    Izena VARCHAR(128) NOT NULL,
    PRIMARY KEY (ID_dantzak)
);

CREATE TABLE IF NOT EXISTS Ekitaldiak (
    ID_ekitaldia INT AUTO_INCREMENT,
    Izena VARCHAR (60) NOT NULL,
    Ibilbide VARCHAR (300),
    PRIMARY KEY (ID_ekitaldia)
);

CREATE TABLE IF NOT EXISTS  Dantzariak (
    ID_dantzari INT AUTO_INCREMENT,
    Izena VARCHAR(40) NOT NULL,
    Erra_Gustokoa INT,
    Dant_gustokoa INT,
    PRIMARY KEY (ID_dantzari)
);

CREATE TABLE IF NOT EXISTS DakitenDantza (
    Dantzari INT,
    Dantza INT,
    Generoa VARCHAR (20),
    PRIMARY KEY (Dantzari, dantza)
);

CREATE TABLE IF NOT EXISTS EkitaldianEramaten (
    Ekitaldia INT,
    Dantzari INT,
    Erraldoia INT,
    PRIMARY KEY (Ekitaldia, Dantzari, Erraldoia)
);

-- Se hace esto para una base que hay 6 gigantes abria que modificarlo depende de cuantos abria
CREATE TABLE IF NOT EXISTS EkitaldiaDantza (
    ID_ekitaldiaDantza INT AUTO_INCREMENT,
    Ekitaldia INT NOT NULL,
    Dantza INT NOT NULL,
    Mutila1 INT,
    Mutila2 INT,
    Mutila3 INT,
    Neska1 INT,
    Neska2 INT,
    Neska3 INT,
    PRIMARY KEY (ID_ekitaldiaDantza)
);