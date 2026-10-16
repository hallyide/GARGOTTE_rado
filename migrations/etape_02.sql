CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL
);


INSERT INTO categorie (id,libelle) VALUES (1,'plats malagasy');
INSERT INTO categorie (id,libelle) VALUES (2,'plats chinois');
INSERT INTO categorie (id,libelle) VALUES (3,'soupes');
INSERT INTO categorie (id,libelle) VALUES (4,'desserts');
INSERT INTO categorie (id,libelle) VALUES (5,'boissons');

ALTER TABLE plat ADD COLUMN id_categorie INT;


UPDATE plat SET id_categorie = 1 WHERE id = 1; 
UPDATE plat SET id_categorie = 1 WHERE id = 2; 
UPDATE plat SET id_categorie = 1 WHERE id = 3; 
UPDATE plat SET id_categorie = 2 WHERE id = 4; 
UPDATE plat SET id_categorie = 3 WHERE id = 5; 
UPDATE plat SET id_categorie = 4 WHERE id = 6; 
UPDATE plat SET id_categorie = 5 WHERE id = 7;


ALTER TABLE plat
ADD CONSTRAINT fk_plat_categorie
FOREIGN KEY (id_categorie)
REFERENCES categorie(id);
