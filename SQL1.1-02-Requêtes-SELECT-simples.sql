/* La liste des bureaux (adresse et ville) triés par pays décroissant puis par état */
SELECT addressLine1, addressLine2, city FROM offices ORDER BY country DESC;
SELECT addressLine1, addressLine2, city FROM offices ORDER BY offices.state DESC;

/* RESULTAT ==> 7 lignes / 100 Market Street */
