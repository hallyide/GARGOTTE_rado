-- Etape 1 :
SELECT * FROM plat ORDER BY prix DESC;
SELECT * FROM plat ORDER BY prix ASC;

-- Etape 2 :

SELECT
    c.id,
    c.libelle AS categorie,
    COUNT(p.id) AS nombre_plats
FROM categorie c
LEFT JOIN plat p ON p.id_categorie = c.id
GROUP BY c.id, c.libelle
ORDER BY c.id;

-- il est preferable d'avoir une colonne categorie pour que chaque categorie soit unique
-- car si c'est une colonne une meme categorie peut s'ecrire de plusieurs maniere :
-- exemple :
--     - dessert
--     - DEssert
--     - DESSERT
--     - DSSRT
--     - ...

-- Etape 3 :

SELECT
    c.id AS id_commande,
    c.dates,
    SUM(p.prix * cf.nombre) AS montant_total
FROM commande c
LEFT JOIN commande_fille cf ON cf.id_commande = c.id
LEFT JOIN plat p ON p.id = cf.id_plat
GROUP BY c.id, c.dates
ORDER BY c.id;

-- je places la quantite du plat dans commandes_fille.
