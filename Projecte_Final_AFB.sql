CREATE DATABASE IF NOT EXISTS projecte_final;
USE projecte_final;
SET GLOBAL local_infile = 1; 

# TAULA DE DIMENSIONS 
CREATE TABLE dimensions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  codi_dimensio INT,
  desc_dimensio VARCHAR(100),
  codi_valor INT,
  desc_valor_ca VARCHAR(100),
  desc_valor_es VARCHAR(100),
  desc_valor_en VARCHAR(100)
) ENGINE=InnoDB;

LOAD DATA LOCAL INFILE 'C:/Users/anaferrandbetes/Documents/IT Academy/Projecte Final/Dataset/Dimensions/pad_dimensions.csv'
INTO TABLE dimensions
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(codi_dimensio, desc_dimensio, codi_valor, desc_valor_ca, desc_valor_es, desc_valor_en);

# TAULA DE POBLACIO PER SEXE I EDAT
CREATE TABLE poblacio_sexe_edat (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_referencia DATE,
  codi_districte INT,
  nom_districte VARCHAR(100),
  codi_barri INT,
  nom_barri VARCHAR(100),
  aeb INT,
  valor INT,
  sexe TINYINT,
  edat_1 INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per sexe i edat\\2021_pad_mdba_sexe_edat-1.csv'
INTO TABLE poblacio_sexe_edat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, valor, sexe, edat_1)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per sexe i edat\\2022_pad_mdba_sexe_edat-1.csv'
INTO TABLE poblacio_sexe_edat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, valor, sexe, edat_1)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per sexe i edat\\2023_pad_mdba_sexe_edat-1.csv'
INTO TABLE poblacio_sexe_edat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, valor, sexe, edat_1)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per sexe i edat\\2024_pad_mdba_sexe_edat-1.csv'
INTO TABLE poblacio_sexe_edat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, valor, sexe, edat_1)
SET valor = NULLIF(valor, '..');

SELECT * FROM projecte_final.poblacio_sexe_edat
WHERE data_referencia IS NULL
OR codi_districte IS NULL
OR nom_districte IS NULL
OR codi_barri IS NULL
OR nom_barri IS NULL
OR codi_districte IS NULL
OR aeb IS NULL
OR sexe IS NULL
OR edat_1 IS NULL;

DELETE FROM projecte_final.poblacio_sexe_edat
WHERE id IN (10904, 26268, 38595, 44610);

# TAULA DE POBLACIO LLOC DE NAIXEMENT I SEXE
CREATE TABLE poblacio_lloc_naix (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_referencia DATE,
  codi_districte INT,
  nom_districte VARCHAR(100),
  codi_barri INT,
  nom_barri VARCHAR(100),
  aeb INT,
  seccio_censal INT,
  valor INT,
  lloc_naix INT,
  sexe TINYINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per lloc de naixement i sexe\\2021_pad_mdbas_lloc-naix_sexe.csv'
INTO TABLE poblacio_lloc_naix
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, lloc_naix, sexe)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per lloc de naixement i sexe\\2022_pad_mdbas_lloc-naix_sexe.csv'
INTO TABLE poblacio_lloc_naix
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, lloc_naix, sexe)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per lloc de naixement i sexe\\2023_pad_mdbas_lloc-naix_sexe.csv'
INTO TABLE poblacio_lloc_naix
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, lloc_naix, sexe)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per lloc de naixement i sexe\\2024_pad_mdbas_lloc-naix_sexe.csv'
INTO TABLE poblacio_lloc_naix
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, lloc_naix, sexe)
SET valor = NULLIF(valor, '..');

SELECT * FROM projecte_final.poblacio_lloc_naix
WHERE data_referencia IS NULL
OR codi_districte IS NULL
OR nom_districte IS NULL
OR codi_barri IS NULL
OR nom_barri IS NULL
OR aeb IS NULL
OR seccio_censal IS NULL
OR lloc_naix IS NULL
OR sexe IS NULL;

DELETE FROM projecte_final.poblacio_lloc_naix
WHERE id IN (9638, 30655, 36044);

# TAULA DE POBLACIO PER NACIONALITAT I SEXE
CREATE TABLE poblacio_nacionalitat (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_referencia DATE,
  codi_districte INT,
  nom_districte VARCHAR(100),
  codi_barri INT,
  nom_barri VARCHAR(100),
  aeb INT,
  seccio_censal INT,
  valor INT NULL,
  nacionalitat_g INT,
  sexe TINYINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per nacionalitat i sexe\\2021_pad_mdbas_nacionalitat-g_sexe.csv'
INTO TABLE poblacio_nacionalitat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, nacionalitat_g, sexe)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per nacionalitat i sexe\\2022_pad_mdbas_nacionalitat-g_sexe.csv'
INTO TABLE poblacio_nacionalitat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, nacionalitat_g, sexe)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per nacionalitat i sexe\\2023_pad_mdbas_nacionalitat-g_sexe.csv'
INTO TABLE poblacio_nacionalitat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, nacionalitat_g, sexe)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Poblacio per nacionalitat i sexe\\2024_pad_mdbas_nacionalitat-g_sexe.csv'
INTO TABLE poblacio_nacionalitat
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, nacionalitat_g, sexe)
SET valor = NULLIF(valor, '..');

SELECT * FROM sys.poblacio_nacionalitat
WHERE data_referencia IS NULL
OR codi_districte IS NULL
OR nom_districte IS NULL
OR codi_barri IS NULL
OR nom_barri IS NULL
OR codi_districte IS NULL
OR aeb IS NULL
OR seccio_censal IS NULL
OR nacionalitat_g IS NULL
OR sexe IS NULL;

DELETE FROM projecte_final.dom_n_persones
WHERE id IN (21553, 27461);

# TAULA DE DOMICILIS PER NOMBRE DE PERSONES
CREATE TABLE dom_n_persones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_referencia DATE,
  codi_districte INT,
  nom_districte VARCHAR(100),
  codi_barri INT,
  nom_barri VARCHAR(100),
  aeb INT,
  seccio_censal INT,
  valor INT NULL,
  n_persones_agg INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Domicilis per nombre de persones\\2021_pad_dom_mdbas_n-persones.csv'
INTO TABLE dom_n_persones
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, n_persones_agg)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Domicilis per nombre de persones\\2022_pad_dom_mdbas_n-persones.csv'
INTO TABLE dom_n_persones
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, n_persones_agg)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Domicilis per nombre de persones\\2023_pad_dom_mdbas_n-persones.csv'
INTO TABLE dom_n_persones
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, n_persones_agg)
SET valor = NULLIF(valor, '..');

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Domicilis per nombre de persones\\2024_pad_dom_mdbas_n-persones.csv'
INTO TABLE dom_n_persones
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, aeb, seccio_censal, valor, n_persones_agg)
SET valor = NULLIF(valor, '..');

SELECT * FROM projecte_final.dom_n_persones
WHERE data_referencia IS NULL
OR codi_districte IS NULL
OR nom_districte IS NULL
OR codi_barri IS NULL
OR nom_barri IS NULL
OR codi_districte IS NULL
OR aeb IS NULL
OR seccio_censal IS NULL
OR n_persones_agg IS NULL;

DELETE FROM projecte_final.dom_n_persones
WHERE id IN (6332, 11687, 15508, 17017);

# TAULA DE RENDA BRUTA
CREATE TABLE renda_bruta (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_referencia YEAR,
  codi_districte INT,
  nom_districte VARCHAR(100),
  codi_barri INT,
  nom_barri VARCHAR(100),
  seccio_censal INT,
  import_renda_bruta INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Renda tributaria bruta mitjana per llar\\2021_atles_renda_bruta_llar.csv'
INTO TABLE renda_bruta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, seccio_censal, import_renda_bruta);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Renda tributaria bruta mitjana per llar\\2022_atles_renda_bruta_llar.csv'
INTO TABLE renda_bruta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, seccio_censal, import_renda_bruta);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Renda tributaria bruta mitjana per llar\\2023_atles_renda_bruta_llar.csv'
INTO TABLE renda_bruta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, seccio_censal, import_renda_bruta);

SELECT * FROM projecte_final.renda_bruta
WHERE data_referencia IS NULL
OR codi_districte IS NULL
OR nom_districte IS NULL
OR codi_barri IS NULL
OR nom_barri IS NULL
OR seccio_censal IS NULL
OR import_renda_bruta IS NULL;

# TAULA DE RENDA NETA
CREATE TABLE renda_neta (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_referencia YEAR,
  codi_districte INT,
  nom_districte VARCHAR(100),
  codi_barri INT,
  nom_barri VARCHAR(100),
  seccio_censal INT,
  import_renda_neta INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Renda tributaria neta mitjana per llar\\2021_renda_neta_mitjana_per_llar.csv'
INTO TABLE renda_neta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, seccio_censal, import_renda_neta);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Renda tributaria neta mitjana per llar\\2022_renda_neta_mitjana_per_llar.csv'
INTO TABLE renda_neta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, seccio_censal, import_renda_neta);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Renda tributaria neta mitjana per llar\\2023_renda_neta_mitjana_per_llar.csv'
INTO TABLE renda_neta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data_referencia, codi_districte, nom_districte, codi_barri, nom_barri, seccio_censal, import_renda_neta);

SELECT * FROM projecte_final.renda_neta
WHERE data_referencia IS NULL
OR codi_districte IS NULL
OR nom_districte IS NULL
OR codi_barri IS NULL
OR nom_barri IS NULL
OR seccio_censal IS NULL
OR import_renda_neta IS NULL;

# TAULA DE HABITAGES PER TIPOLOGIA
CREATE TABLE habitatges_tipo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  codi_districte INT,
  codi_nom_barri VARCHAR(100),
  hab_total INT,
  hab_principals INT,
  hab_secundaris_total INT NULL,
  sec_ocupats INT NULL,
  sec_desocupats INT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Habitatges familiars per tipologia\\2011_HABIT_FAM_SIT_EDIF_DEST_HABIT_SEGONS_TIP2011.csv'
INTO TABLE habitatges_tipo
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    codi_districte,
    codi_nom_barri,
    @hab_total,
    @hab_principals,
    @hab_secundaris_total,
    @sec_ocupats,
    @sec_desocupats
)
SET
    hab_total             = NULLIF(REPLACE(@hab_total, '.', ''), ''),
    hab_principals        = NULLIF(REPLACE(@hab_principals, '.', ''), ''),
    hab_secundaris_total  = NULLIF(REPLACE(@hab_secundaris_total, '.', ''), ''),
    sec_ocupats           = NULLIF(REPLACE(@sec_ocupats, '.', ''), ''),
    sec_desocupats        = NULLIF(REPLACE(@sec_desocupats, '.', ''), '');

# ELIMINEM TOTAL
SELECT * FROM projecte_final.habitatges_tipo
WHERE codi_districte = ""
OR codi_nom_barri = "";

DELETE FROM projecte_final.habitatges_tipo
WHERE id = 1;

# AFEGIM COLUMNA NOM_DISTRICTE
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE habitatges_tipo 
ADD COLUMN nom_districte VARCHAR(100) AFTER codi_districte;
UPDATE habitatges_tipo h
JOIN renda_neta n ON h.codi_districte = n.codi_districte
SET h.nom_districte = n.nom_districte;

# AFEGIM COLUMNA CODI_BARRI I NOM_BARRI
ALTER TABLE habitatges_tipo 
ADD COLUMN codi_barri INT AFTER nom_districte,
ADD COLUMN nom_barri VARCHAR(100) AFTER codi_barri;

UPDATE habitatges_tipo 
SET codi_barri = CAST(SUBSTRING_INDEX(codi_nom_barri, '.', 1) AS UNSIGNED);
UPDATE habitatges_tipo h
JOIN renda_neta n ON h.codi_barri = n.codi_barri
SET h.nom_barri = n.nom_barri;

# ELIMINEM CODI_NOM_BARRI
ALTER TABLE habitatges_tipo 
DROP COLUMN codi_nom_barri;
SET SQL_SAFE_UPDATES = 1;

# TAULA DE HABITAGES PER SUPERFICIE
CREATE TABLE habitatges_superficie (
  id INT AUTO_INCREMENT PRIMARY KEY,
  codi_districte INT,
  codi_nom_barri VARCHAR(100),
  total INT,
  fins_30m2 INT,
  de_30_60m2 INT NULL,
  de_60_90m2 INT NULL,
  de_90_120m2 INT NULL,
  de_120_150m2 INT NULL,
  mes_150m2 INT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Habitatges principals segons superficie util\\2011_habit_ppal_segons_sup_util2011.csv'
INTO TABLE habitatges_superficie
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    codi_districte,
    codi_nom_barri,
    @total,
    @fins_30m2,
    @de_30_60m2,
    @de_60_90m2,
    @de_90_120m2, 
    @de_120_150m2,
    @mes_150m2
)
SET
    total             = NULLIF(REPLACE(@total, '.', ''), ''),
    fins_30m2        = NULLIF(REPLACE(@fins_30m2, '.', ''), ''),
    de_30_60m2  = NULLIF(REPLACE(@de_30_60m2, '.', ''), ''),
    de_60_90m2           = NULLIF(REPLACE(@de_60_90m2, '.', ''), ''),
    de_90_120m2        = NULLIF(REPLACE(@de_90_120m2, '.', ''), ''),
	de_120_150m2        = NULLIF(REPLACE(@de_120_150m2, '.', ''), ''),
	mes_150m2        = NULLIF(REPLACE(@mes_150m2, '.', ''), '');

# ELIMINEM TOTAL
SELECT * FROM projecte_final.habitatges_superficie
WHERE codi_districte = ""
OR codi_nom_barri = "";

DELETE FROM projecte_final.habitatges_superficie
WHERE id = 1;

# AFEGIM COLUMNA NOM_DISTRICTE
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE habitatges_superficie
ADD COLUMN nom_districte VARCHAR(100) AFTER codi_districte;
UPDATE habitatges_superficie s
JOIN renda_neta n ON s.codi_districte = n.codi_districte
SET s.nom_districte = n.nom_districte;

# AFEGIM COLUMNA CODI_BARRI I NOM_BARRI
ALTER TABLE habitatges_superficie 
ADD COLUMN codi_barri INT AFTER nom_districte,
ADD COLUMN nom_barri VARCHAR(100) AFTER codi_barri;

UPDATE habitatges_superficie
SET codi_barri = CAST(SUBSTRING_INDEX(codi_nom_barri, '.', 1) AS UNSIGNED);
UPDATE habitatges_superficie s
JOIN renda_neta n ON s.codi_barri = n.codi_barri
SET s.nom_barri = n.nom_barri;

# ELIMINEM CODI_NOM_BARRI
ALTER TABLE habitatges_superficie 
DROP COLUMN codi_nom_barri;
SET SQL_SAFE_UPDATES = 1;

# TAULES UNITATS ADMINISTRATIVES - AEB 
 CREATE TABLE geom_aeb (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codi_districte INT,
    nom_districte VARCHAR(100),
    codi_barri INT,
    nom_barri VARCHAR(100),
    aeb INT,
    geom_etrs89 GEOMETRY NOT NULL SRID 25831,
    geom_wgs84  GEOMETRY NOT NULL SRID 4326
);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Unitats Administratives Barcelona\\BarcelonaCiutat_AreesEstadistiquesBasiques.csv'
INTO TABLE geom_aeb
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(codi_districte,
 nom_districte,
 codi_barri,
 nom_barri,
 aeb,
@geom_etrs89,
@geom_wgs84
)
    SET
  geom_etrs89 = ST_GeomFromText(@geom_etrs89, 25831), 
  geom_wgs84 = ST_GeomFromText(@geom_wgs84, 4326);


# TAULES UNITATS ADMINISTRATIVES - BARRIS
CREATE TABLE geom_barris (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codi_districte INT,
    nom_districte VARCHAR(100),
    codi_barri INT,
    nom_barri VARCHAR(100),
    geom_etrs89 GEOMETRY NOT NULL SRID 25831,
    geom_wgs84  GEOMETRY NOT NULL SRID 4326
);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Unitats Administratives Barcelona\\BarcelonaCiutat_Barris.csv'
INTO TABLE geom_barris
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(codi_districte,
nom_districte,
codi_barri,
nom_barri,
@geom_etrs89,
@geom_wgs84
)
SET
  geom_etrs89 = ST_GeomFromText(@geom_etrs89, 25831), 
  geom_wgs84 = ST_GeomFromText(@geom_wgs84, 4326);

# TAULES UNITATS ADMINISTRATIVES - DISTRICTES
CREATE TABLE geom_districtes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codi_districte INT,
    nom_districte VARCHAR(100),
	geom_etrs89 GEOMETRY NOT NULL SRID 25831,
    geom_wgs84  GEOMETRY NOT NULL SRID 4326
);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Unitats Administratives Barcelona\\BarcelonaCiutat_Districtes.csv'
INTO TABLE geom_districtes
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(codi_districte,
nom_districte,
@geom_etrs89,
@geom_wgs84
)
SET
  geom_etrs89 = ST_GeomFromText(@geom_etrs89, 25831), 
  geom_wgs84 = ST_GeomFromText(@geom_wgs84, 4326);

# TAULES UNITATS ADMINISTRATIVES - SECCIONS CENSALS
CREATE TABLE geom_seccions_censals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codi_districte INT,
    nom_districte VARCHAR(100),
    codi_barri INT,
    nom_barri VARCHAR(100),
    codi_aeb INT,
    codi_seccio_censal INT,
    geom_etrs89 GEOMETRY NOT NULL SRID 25831,
    geom_wgs84  GEOMETRY NOT NULL SRID 4326
);

LOAD DATA LOCAL INFILE 'C:\\Users\\anaferrandbetes\\Documents\\IT Academy\\Projecte Final\\Dataset\\Unitats Administratives Barcelona\\BarcelonaCiutat_SeccionsCensals.csv'
INTO TABLE geom_seccions_censals
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    codi_districte,
    nom_districte,
    codi_barri,
    nom_barri,
    codi_aeb,
    codi_seccio_censal,
    @geom_etrs89,
    @geom_wgs84
)
SET
  geom_etrs89 = ST_GeomFromText(@geom_etrs89, 25831), 
  geom_wgs84 = ST_GeomFromText(@geom_wgs84, 4326);

# CREEM LA TAULA DE TERRITORI
CREATE TABLE territori (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codi_districte INT,
    nom_districte VARCHAR(120),
    codi_barri INT,
    nom_barri VARCHAR(120),
    aeb INT,
    seccio_censal INT,
    geom_etrs89 GEOMETRY,
    geom_wgs84 GEOMETRY
);

INSERT INTO territori (codi_districte, nom_districte, codi_barri, nom_barri, aeb, geom_etrs89, geom_wgs84)
SELECT DISTINCT
    codi_districte,
    nom_districte,
    codi_barri,
    nom_barri,
    aeb,
    geom_etrs89,
    geom_wgs84
FROM geom_aeb;

UPDATE territori t
JOIN geom_seccions_censals s 
ON  t.aeb = s.codi_aeb
SET t.seccio_censal = s.codi_seccio_censal;

# CREEM CLAU PRIMARIA COMPOSTA
ALTER TABLE territori
ADD UNIQUE KEY uk_territori (codi_districte, codi_barri, aeb, seccio_censal);

# AFEGIM SECCIO_CENSAL A POBLACIO_SEXE_EDAT
ALTER TABLE poblacio_sexe_edat
ADD COLUMN seccio_censal INT AFTER aeb;
UPDATE poblacio_sexe_edat p
JOIN territori t ON p.aeb = t.aeb
SET p.seccio_censal = t.seccio_censal;

# CREEM CLAUS FORANEES AMB TERRITORI A TOTES LES TAULES
ALTER TABLE poblacio_sexe_edat
ADD CONSTRAINT fk_pse_territori
FOREIGN KEY (codi_districte, codi_barri, aeb, seccio_censal)
REFERENCES territori (codi_districte, codi_barri, aeb, seccio_censal);

# FILES ORFES A LLOC_NAIX AMB TERRITORI
SELECT DISTINCT p.*
FROM poblacio_lloc_naix p
LEFT JOIN territori t
  ON p.codi_districte = t.codi_districte
 AND p.codi_barri     = t.codi_barri
 AND p.aeb            = t.aeb
 AND p.seccio_censal  = t.seccio_censal
WHERE t.seccio_censal IS NULL;

# INSERIM ORFES A TERRITORI
INSERT INTO territori (codi_districte, codi_barri, aeb, seccio_censal)
SELECT DISTINCT p.codi_districte, p.codi_barri, p.aeb, p.seccio_censal
FROM poblacio_lloc_naix p
LEFT JOIN territori t
  ON p.codi_districte = t.codi_districte
 AND p.codi_barri     = t.codi_barri
 AND p.aeb            = t.aeb
 AND p.seccio_censal  = t.seccio_censal
WHERE t.codi_districte IS NULL
  AND p.seccio_censal IS NOT NULL
  AND p.seccio_censal <> '';

ALTER TABLE poblacio_lloc_naix
ADD CONSTRAINT fk_pln_territori
FOREIGN KEY (codi_districte, codi_barri, aeb, seccio_censal)
REFERENCES territori (codi_districte, codi_barri, aeb, seccio_censal);

# ORFES DE NACINOALITAT AMB TERRITORI
SELECT DISTINCT p.*
FROM poblacio_nacionalitat p
LEFT JOIN territori t
  ON p.codi_districte = t.codi_districte
 AND p.codi_barri     = t.codi_barri
 AND p.aeb            = t.aeb
 AND p.seccio_censal  = t.seccio_censal
WHERE t.seccio_censal IS NULL;

# INSERIM ORFES A TERRITORI
INSERT INTO territori (codi_districte, codi_barri, aeb, seccio_censal)
SELECT DISTINCT p.codi_districte, p.codi_barri, p.aeb, p.seccio_censal
FROM poblacio_nacionalitat p
LEFT JOIN territori t
  ON p.codi_districte = t.codi_districte
 AND p.codi_barri     = t.codi_barri
 AND p.aeb            = t.aeb
 AND p.seccio_censal  = t.seccio_censal
WHERE t.codi_districte IS NULL
  AND p.seccio_censal IS NOT NULL
  AND p.seccio_censal <> '';

ALTER TABLE poblacio_nacionalitat
ADD CONSTRAINT fk_pnat_territori
FOREIGN KEY (codi_districte, codi_barri, aeb, seccio_censal)
REFERENCES territori (codi_districte, codi_barri, aeb, seccio_censal);

 ALTER TABLE dom_n_persones
ADD CONSTRAINT fk_dom_territori
FOREIGN KEY (codi_districte, codi_barri, aeb, seccio_censal)
REFERENCES territori (codi_districte, codi_barri, aeb, seccio_censal);
 
# CREEM INDEX UNIC PER LES TAULES DE RENDA 
ALTER TABLE territori
ADD UNIQUE KEY idx_territori (codi_districte, codi_barri, seccio_censal); 

# ORFES DE RENDA BRUTA AMB TERRITORI
SELECT DISTINCT r.codi_districte, r.codi_barri, r.seccio_censal
FROM renda_bruta r
LEFT JOIN territori t
  ON r.codi_districte = t.codi_districte
 AND r.codi_barri     = t.codi_barri
 AND r.seccio_censal  = t.seccio_censal
WHERE t.codi_districte IS NULL;

# INSERIM ORFES A TERRITORI
INSERT INTO territori (codi_districte, codi_barri, seccio_censal)
SELECT DISTINCT r.codi_districte, r.codi_barri, r.seccio_censal
FROM renda_bruta r
LEFT JOIN territori t
  ON r.codi_districte = t.codi_districte
 AND r.codi_barri     = t.codi_barri
 AND r.seccio_censal  = t.seccio_censal
WHERE t.codi_districte IS NULL
  AND r.seccio_censal IS NOT NULL
  AND r.seccio_censal <> '';

ALTER TABLE renda_bruta
ADD CONSTRAINT fk_rb_territori
FOREIGN KEY (codi_districte, codi_barri, seccio_censal)
REFERENCES territori (codi_districte, codi_barri, seccio_censal);

ALTER TABLE renda_neta
ADD CONSTRAINT fk_rn_territori
FOREIGN KEY (codi_districte, codi_barri, seccio_censal)
REFERENCES territori (codi_districte, codi_barri, seccio_censal);

ALTER TABLE habitatges_tipo
ADD CONSTRAINT fk_ht_territori
FOREIGN KEY (codi_districte, codi_barri)
REFERENCES territori (codi_districte, codi_barri);

ALTER TABLE habitatges_superficie
ADD CONSTRAINT fk_hs_territori
FOREIGN KEY (codi_districte, codi_barri)
REFERENCES territori (codi_districte, codi_barri);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# CHECK I NETEJA D'ERRORS A TERRITORI
SELECT *
FROM territori
WHERE codi_districte IS NULL
   OR nom_districte IS NULL
   OR codi_barri IS NULL
   OR nom_barri IS NULL
   OR aeb IS NULL
   OR seccio_censal IS NULL
   OR geom_etrs89 IS NULL
   OR geom_wgs84 IS NULL;

# ACTUALIZEM REGISTRES BUITS DETECTATS DESDE GEOM_SECCIONS_CENSALS
SET SQL_SAFE_UPDATES = 0;
UPDATE territori t
JOIN geom_seccions_censals s
  ON t.seccio_censal = s.codi_seccio_censal
SET
    t.codi_districte = COALESCE(t.codi_districte, s.codi_districte),
    t.nom_districte  = COALESCE(t.nom_districte, s.nom_districte),
    t.codi_barri     = COALESCE(t.codi_barri, s.codi_barri),
    t.nom_barri      = COALESCE(t.nom_barri, s.nom_barri),
    t.aeb            = COALESCE(t.aeb, s.codi_aeb)
WHERE t.codi_districte IS NULL
   OR t.nom_districte IS NULL
   OR t.codi_barri IS NULL
   OR t.nom_barri IS NULL
   OR t.aeb IS NULL;
   
#  ACTUALITZEM AMB GEOM_BARRIS SI NO HI HA SECCIO_CENSAL 
UPDATE territori t
JOIN geom_barris b
  ON t.codi_barri = b.codi_barri
SET
    t.codi_districte = COALESCE(t.codi_districte, b.codi_districte),
    t.nom_districte  = COALESCE(t.nom_districte, b.nom_districte),
    t.nom_barri      = COALESCE(t.nom_barri, b.nom_barri)
WHERE t.codi_districte IS NULL
   OR t.nom_districte IS NULL
   OR t.nom_barri IS NULL
   OR t.aeb IS NULL;

# ACTUALITZEM AMB GEOM_DISTRICTES SI FALTA DISTRICTE
UPDATE territori t
JOIN geom_districtes d
  ON t.codi_districte = d.codi_districte
SET
    t.nom_districte = COALESCE(t.nom_districte, d.nom_districte)
WHERE t.nom_districte IS NULL;

# ACTUALITZEM GEOMETRIES DESDE GEOM_AEB 
UPDATE territori t
JOIN geom_aeb a
  ON t.aeb = a.aeb
SET
    t.geom_etrs89 = COALESCE(t.geom_etrs89, a.geom_etrs89),
    t.geom_wgs84  = COALESCE(t.geom_wgs84, a.geom_wgs84),
    t.codi_districte = COALESCE(t.codi_districte, a.codi_districte),
    t.nom_districte  = COALESCE(t.nom_districte, a.nom_districte),
    t.codi_barri     = COALESCE(t.codi_barri, a.codi_barri),
    t.nom_barri      = COALESCE(t.nom_barri, a.nom_barri)
WHERE t.geom_etrs89 IS NULL
   OR t.geom_wgs84 IS NULL
   OR t.codi_districte IS NULL
   OR t.nom_districte IS NULL
   OR t.codi_barri IS NULL
   OR t.nom_barri IS NULL;

# VERIFIQUEM QUE JA NO QUEDEN NULS
SELECT *
FROM territori
WHERE codi_districte IS NULL
   OR nom_districte IS NULL
   OR codi_barri IS NULL
   OR nom_barri IS NULL
   OR seccio_censal IS NULL
   OR geom_etrs89 IS NULL
   OR geom_wgs84 IS NULL;   
   
   ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   
   # CREACIÓ DE VISTES PER EXPORTAR GEOMETRIES 
   CREATE OR REPLACE VIEW v_territori_wkt AS
SELECT 
    codi_districte,
    nom_districte,
    codi_barri,
    nom_barri,
    aeb,
    seccio_censal,
    ST_AsText(geom_etrs89) AS wkt_geom_etrs89,
    ST_AsText(geom_wgs84) AS wkt_geom_wgs84
FROM territori;

   CREATE OR REPLACE VIEW v_geom_aeb_wkt AS
SELECT 
    codi_districte,
    nom_districte,
    codi_barri,
    nom_barri,
    aeb,
    ST_AsText(geom_etrs89) AS wkt_geom_etrs89,
    ST_AsText(geom_wgs84) AS wkt_geom_wgs84
FROM geom_aeb;

      CREATE OR REPLACE VIEW v_geom_barris_wkt AS
SELECT 
    codi_districte,
    nom_districte,
    codi_barri,
    nom_barri,
    ST_AsText(geom_etrs89) AS wkt_geom_etrs89,
    ST_AsText(geom_wgs84) AS wkt_geom_wgs84
FROM geom_barris;

        CREATE OR REPLACE VIEW v_geom_districtes_wkt AS
SELECT 
    codi_districte,
    nom_districte,
	ST_AsText(geom_etrs89) AS wkt_geom_etrs89,
    ST_AsText(geom_wgs84) AS wkt_geom_wgs84
FROM geom_districtes;

CREATE OR REPLACE VIEW v_geom_seccions_censals_wkt AS
SELECT 
    codi_districte,
    nom_districte,
    codi_barri,
    nom_barri,
    codi_aeb,
    codi_seccio_censal,
	ST_AsText(geom_etrs89) AS wkt_geom_etrs89,
    ST_AsText(geom_wgs84) AS wkt_geom_wgs84
FROM geom_seccions_censals;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# CONSULTES 
# BARRIS PER DISTRICTE
SELECT codi_districte, nom_districte,
       GROUP_CONCAT(CONCAT(codi_barri, ' - ', nom_barri) SEPARATOR ', ') AS barris
FROM projecte_final.geom_barris
GROUP BY codi_districte, nom_districte;

# AEBS PER DISTRICTE
SELECT nom_districte, COUNT(DISTINCT aeb) AS total_aeb
FROM geom_aeb
GROUP BY nom_districte WITH ROLLUP;

# SECCIONS CENSALS PER DISTRICTE
SELECT 
    'TOTAL' AS nom_districte, SUM(total_sc) AS total_sc
FROM
    (SELECT 
        nom_districte,
            COUNT(DISTINCT codi_seccio_censal) AS total_sc
    FROM
        geom_seccions_censals
    GROUP BY nom_districte) AS districte_counts 
UNION ALL SELECT 
    nom_districte,
    COUNT(DISTINCT codi_seccio_censal) AS total_sc
FROM
    geom_seccions_censals
GROUP BY nom_districte;

# RANGS DE SUPERFICIE AMB 0 HABITATGES AL BARRI
SELECT *
FROM (WITH sup_llars AS (
    SELECT 
        id,
        codi_districte,
        codi_barri,
        nom_barri,
        total AS llars_total,
        'fins_30m2' AS rang_sup,
        COALESCE(fins_30m2, 0) AS n_llars
    FROM habitatges_superficie
    UNION ALL
    SELECT 
        id, codi_districte, codi_barri, nom_barri, total,
        'de_30_60m2', COALESCE(de_30_60m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT 
        id, codi_districte, codi_barri, nom_barri, total,
        'de_60_90m2', COALESCE(de_60_90m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT 
        id, codi_districte, codi_barri, nom_barri, total,
        'de_90_120m2', COALESCE(de_90_120m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT 
        id, codi_districte, codi_barri, nom_barri, total,
        'de_120_150m2', COALESCE(de_120_150m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT 
        id, codi_districte, codi_barri, nom_barri, total,
        'mes_150m2', COALESCE(mes_150m2, 0)
    FROM habitatges_superficie
)

SELECT 
    id,
    codi_districte,
    codi_barri,
    nom_barri,
    llars_total,
    rang_sup,
    n_llars,
    CASE rang_sup
        WHEN 'fins_30m2'    THEN 15
        WHEN 'de_30_60m2'   THEN 45
        WHEN 'de_60_90m2'   THEN 75
        WHEN 'de_90_120m2'  THEN 105
        WHEN 'de_120_150m2' THEN 135
        WHEN 'mes_150m2'    THEN 165
    END AS p_mig_rang,
    n_llars * CASE rang_sup
        WHEN 'fins_30m2'    THEN 15
        WHEN 'de_30_60m2'   THEN 45
        WHEN 'de_60_90m2'   THEN 75
        WHEN 'de_90_120m2'  THEN 105
        WHEN 'de_120_150m2' THEN 135
        WHEN 'mes_150m2'    THEN 165
    END AS ponderat
FROM sup_llars
) AS sup_llars
WHERE ponderat = 0;

# BARRIS AMB TOTS ELS RANGS AMB 0 HABITATGES (SENSE DADES)
WITH sup_llars AS (
    SELECT 
        id,
        codi_districte,
        codi_barri,
        nom_barri,
        total AS llars_total,
        'fins_30m2' AS rang_sup,
        COALESCE(fins_30m2, 0) AS n_llars
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_30_60m2', COALESCE(de_30_60m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_60_90m2', COALESCE(de_60_90m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_90_120m2', COALESCE(de_90_120m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_120_150m2', COALESCE(de_120_150m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'mes_150m2', COALESCE(mes_150m2, 0)
    FROM habitatges_superficie
)
SELECT 
    codi_districte,
    codi_barri,
    nom_barri,
    SUM(n_llars) AS total_llars
FROM sup_llars
GROUP BY codi_districte, codi_barri, nom_barri
HAVING total_llars = 0;

# BARRI DE LA CLOTA (SENSE DADES)
WITH sup_llars AS (
    SELECT 
        id,
        codi_districte,
        codi_barri,
        nom_barri,
        total AS llars_total,
        'fins_30m2' AS rang_sup,
        COALESCE(fins_30m2, 0) AS n_llars
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_30_60m2', COALESCE(de_30_60m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_60_90m2', COALESCE(de_60_90m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_90_120m2', COALESCE(de_90_120m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_120_150m2', COALESCE(de_120_150m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'mes_150m2', COALESCE(mes_150m2, 0)
    FROM habitatges_superficie
)
SELECT 
    id,
    codi_districte,
    codi_barri,
    nom_barri,
    llars_total,
    rang_sup,
    n_llars,
    CASE rang_sup
        WHEN 'fins_30m2'    THEN 15
        WHEN 'de_30_60m2'   THEN 45
        WHEN 'de_60_90m2'   THEN 75
        WHEN 'de_90_120m2'  THEN 105
        WHEN 'de_120_150m2' THEN 135
        WHEN 'mes_150m2'    THEN 165
    END AS p_mig_rang,
    n_llars * CASE rang_sup
        WHEN 'fins_30m2'    THEN 15
        WHEN 'de_30_60m2'   THEN 45
        WHEN 'de_60_90m2'   THEN 75
        WHEN 'de_90_120m2'  THEN 105
        WHEN 'de_120_150m2' THEN 135
        WHEN 'mes_150m2'    THEN 165
    END AS ponderat
FROM sup_llars
WHERE nom_barri = 'la Clota';

# MITJANES DE 25, 26 SANT GERVASI BONANOVA I GALVANY (PER QUE NO SURTEN AL MAPA?) --> FALLAVA LA POBLACIÓ PER CULPA DEL MERGE PER NOM_BARRI
WITH sup_llars AS (
    SELECT 
        id,
        codi_districte,
        codi_barri,
        nom_barri,
        total AS llars_total,
        'fins_30m2' AS rang_sup,
        COALESCE(fins_30m2, 0) AS n_llars
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_30_60m2', COALESCE(de_30_60m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_60_90m2', COALESCE(de_60_90m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_90_120m2', COALESCE(de_90_120m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'de_120_150m2', COALESCE(de_120_150m2, 0)
    FROM habitatges_superficie
    UNION ALL
    SELECT id, codi_districte, codi_barri, nom_barri, total,
           'mes_150m2', COALESCE(mes_150m2, 0)
    FROM habitatges_superficie
)
SELECT 
    id,
    codi_districte,
    codi_barri,
    nom_barri,
    llars_total,
    rang_sup,
    n_llars,
    CASE rang_sup
        WHEN 'fins_30m2'    THEN 15
        WHEN 'de_30_60m2'   THEN 45
        WHEN 'de_60_90m2'   THEN 75
        WHEN 'de_90_120m2'  THEN 105
        WHEN 'de_120_150m2' THEN 135
        WHEN 'mes_150m2'    THEN 165
    END AS p_mig_rang,
    n_llars * CASE rang_sup
        WHEN 'fins_30m2'    THEN 15
        WHEN 'de_30_60m2'   THEN 45
        WHEN 'de_60_90m2'   THEN 75
        WHEN 'de_90_120m2'  THEN 105
        WHEN 'de_120_150m2' THEN 135
        WHEN 'mes_150m2'    THEN 165
    END AS ponderat
FROM sup_llars
WHERE codi_barri IN (25, 26);
