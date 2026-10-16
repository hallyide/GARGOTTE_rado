
CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

ALTER TABLE commande ADD COLUMN id_client INT;

ALTER TABLE commande
ADD CONSTRAINT fk_commande_client
FOREIGN KEY (id_client)
REFERENCES client(id);

