USE dblkap09

CREATE TABLE tbl_07bautor

(
--Attributbezeichner -  Datentyp  - Funktion
   autornr              INTEGER     PRIMARY KEY,
   Name                 CHAR(35)    NOT NULL,
   vorname              CHAR(35),
  geboren               DATE,
);


CREATE TABLE tbl_ueArtikel07b_Buchexemplar(
ExNr  INTEGER     PRIMARY KEY IDENTITY(100,10),
ISBN INTEGER,
Standort Char(15),
);

CREATE TABLE tbl_ueArtikel07b_Autor(
AutorNr     INTEGER     PRIMARY KEY IDENTITY(100,10),
Name        INTEGER,
Vorname     Char(15),
GebDatum    DATE,
TodDatum    DATE,
Werke       Char (100),
Beruf       Char (20),
Wohnort     Char (30),
);

CREATE TABLE tbl_ueArtikel07b_BuchtypAutor(
AutorNr     INTEGER     PRIMARY KEY IDENTITY(100,10),
Name        INTEGER,
Vorname     Char(15),
GebDatum    DATE,
TodDatum    DATE,
Werke       Char (100),
Beruf       Char (20),
Wohnort     Char (30),
);

CREATE Table tbl_07b_ausleihvorgang(
AusleihNr INTEGER PRIMARY KEY,
KundenNr INTEGER FOREIGN KEY,
ExNr INTEGER FOREING KEY,
Ausleihdatum DATE,
Rückgabedatum DATE,
);
