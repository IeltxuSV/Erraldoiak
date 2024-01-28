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