CREATE DATABASE gargotte;

USE gargotte;

CREATE TABLE plat (
    id SERIAL PRIMARY KEY,
    plat VARCHAR(100) NOT NULL,
    prix int NOT NULL
);

INSERT INTO plat (id,plat,prix) VALUES (1,'Romazava',7000);
INSERT INTO plat (id,plat,prix) VALUES (2,'Ravitoto sy henakisoa',8000);
INSERT INTO plat (id,plat,prix) VALUES (3,'Akoho sy voanio',8500);
INSERT INTO plat (id,plat,prix) VALUES (4,'Mi sao',6000);
INSERT INTO plat (id,plat,prix) VALUES (5,'Soupe chinoise',5000);
INSERT INTO plat (id,plat,prix) VALUES (6,'Mofo gasy',100);
INSERT INTO plat (id,plat,prix) VALUES (7,'Ranon''ampango',500);

