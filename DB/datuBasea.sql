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


-- Foreing Keys
-- Dantzariak
ALTER TABLE Dantzariak ADD CONSTRAINT fk_Dantz_erra FOREIGN KEY (Erra_Gustokoa) REFERENCES Erraldoiak (ID_erraldoia);
ALTER TABLE Dantzariak ADD CONSTRAINT fk_Dantz_dant FOREIGN KEY (Dant_gustokoa) REFERENCES Dantzak (ID_dantzak);
-- Dakiten Dantza
ALTER TABLE DakitenDantza ADD CONSTRAINT fk_dakiten_dantzari FOREIGN KEY (Dantzari) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE DakitenDantza ADD CONSTRAINT fk_dakiten_dantza FOREIGN KEY (Dantza) REFERENCES Dantzak (ID_dantzak);

-- EkitaldianEramaten
ALTER TABLE EkitaldianEramaten ADD CONSTRAINT fk_ekiera_ekit FOREIGN KEY (Ekitaldia) REFERENCES Ekitaldiak (ID_ekitaldia);
ALTER TABLE EkitaldianEramaten ADD CONSTRAINT fk_ekiera_dantz FOREIGN KEY (Dantzari) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE EkitaldianEramaten ADD CONSTRAINT fk_ekiera_erra FOREIGN KEY (Erraldoia) REFERENCES Erraldoiak (ID_erraldoia);

-- EkitaldiaDanza
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_ekita FOREIGN KEY (Ekitaldia) REFERENCES Ekitaldiak (ID_ekitaldia);
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_dantz FOREIGN KEY (Dantza) REFERENCES Dantzak (ID_dantzak);

-- EkitaldiaDantza
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_mut1 FOREIGN KEY (Mutila1) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_mut2 FOREIGN KEY (Mutila2) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_mut3 FOREIGN KEY (Mutila3) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_nes1 FOREIGN KEY (Neska1) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_nes2 FOREIGN KEY (Neska2) REFERENCES Dantzariak (ID_dantzari);
ALTER TABLE EkitaldiaDantza ADD CONSTRAINT fk_ekitadantz_nes3 FOREIGN KEY (Neska3) REFERENCES Dantzariak (ID_dantzari);
