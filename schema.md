PLAT(**id**,#id_categorie,nom,prix);
categorie (**id**,libelle);
commande (**id**,dates,#id_client);
commande_fille (**id**, #id_commande,#id_plat,nombre);
client (**id**,nom);