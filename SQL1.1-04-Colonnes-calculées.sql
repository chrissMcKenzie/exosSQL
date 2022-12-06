/* La liste des motos (nom, vendeur, quantité et marge) triés par marge décroissante */
SELECT productName, productVendor, quantityInStock, (MSRP - buyPrice) AS Marge FROM products
WHERE productLine = "Motorcycles"
ORDER BY Marge DESC;

/* RESULTAT ==> 13 lignes / 2003 Harley-Davidson Eagle Drag Bike */



/* La liste des commandes (numéro, date de commande, date d'expédition, écart en jours entre les deux dates et statut) qui sont en cours de traitement ou qui ont été expédiées et ont un écart de plus de 10j triés par écart décroissant puis par date de commande */
SELECT orderNumber, orderDate, shippedDate, DATEDIFF(shippedDate, orderDate), orders.status FROM orders
WHERE (DATEDIFF(shippedDate, orderDate) > 10 AND status = "Shipped" OR status = "In Pocess")
-- ORDER BY DATEDIFF(shippedDate, orderDate) DESC, orderDate DESC;


	, , requiredDate, shippedDate, 
/* RESULTAT ==> 33 lignes / 10165 */



/*La liste des produits (nom et valeur du stock à la vente) des années 1960 */


/* RESULTAT ==> 16 lignes / 1969 Harley Davidson Ultimate Chopper */
