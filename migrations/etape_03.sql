
CREATE TABLE commande (
    id SERIAL PRIMARY KEY,
    dates DATE
);

CREATE TABLE commande_fille (
    id SERIAL PRIMARY KEY,
    id_commande INT NOT NULL,
    id_plat INT NOT NULL,
    nombre INT NOT NULL,

    CONSTRAINT fk_plat
        FOREIGN KEY (id_plat)
        REFERENCES plat(id),

    CONSTRAINT fk_commande
        FOREIGN KEY (id_commande)
        REFERENCES commande(id)
);

INSERT INTO commande (dates) VALUES
('2026-10-01'),
('2026-10-02'),
('2026-10-03');

INSERT INTO commande_fille (id_commande, id_plat, nombre) VALUES
-- Commande 1
(1, 1, 2),  -- 2 Romazava
(1, 2, 1),  -- 1 Ravitoto sy henakisoa
(1, 7, 2),  -- 2 Ranon'ampango

-- Commande 2
(2, 1, 1),  -- 1 Romazava
(2, 4, 2),  -- 2 Mi sao
(2, 5, 1),  -- 1 Soupe chinoise

-- Commande 3
(3, 2, 2),  -- 2 Ravitoto sy henakisoa
(3, 3, 1),  -- 1 Akoho sy voanio
(3, 6, 4);  -- 4 Mofo gasy

