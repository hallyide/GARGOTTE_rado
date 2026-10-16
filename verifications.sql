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
