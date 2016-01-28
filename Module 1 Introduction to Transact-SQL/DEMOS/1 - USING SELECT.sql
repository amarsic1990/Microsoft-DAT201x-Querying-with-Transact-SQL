/* odabir svih stupaca iz tablice SalesLT.Product */
SELECT * 
FROM SalesLT.Product;

/* odabir specificiranih stupaca */
SELECT ProductID, Name, ListPrice, StandardCost, ListPrice - StandardCost AS Margin
FROM SalesLT.Product;

/* AS zapravo i ne moramo koristiti */
SELECT ProductID, Name, ListPrice, StandardCost, ListPrice - StandardCost Margin
FROM SalesLT.Product;

/* + spaja stringove */
SELECT ProductID, Name, Color, Size, Color + Size AS Styyle
FROM SalesLT.Product

/* stupce koji imaju type NUMERICAL i TEXT ne mozemo zbrajati/spajati... ERROR */
SELECT ProductID, Name, Color, Size, ListPrice + Size
FROM SalesLT.Product
