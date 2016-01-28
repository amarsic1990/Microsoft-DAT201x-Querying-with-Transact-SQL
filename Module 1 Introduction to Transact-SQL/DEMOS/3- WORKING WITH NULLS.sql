-- ISNULL
/* Konvertiranje stupca "Size" u broj i pretvaranje NULL vrijednosti u 0*/
SELECT Name, ISNULL(TRY_CAST(Size AS Integer), 0) As NumericSize
FROM SalesLT.Product;

/* Konvertiranje NULL vrijednosti iz stupaca "Size" i "Color" u prazan string*/
SELECT ProductNumber, ISNULL(Color, '') + ',' + ISNULL(Size, '') AS ProductDetails
FROM SalesLT.Product;

-- NULLIF
/* gdje je "Color" "Multi" stavljamo NULL*/
SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
FROM SalesLT.Product;

-- COALESCE
/* Pronalaženje prve vrijednosti koja nije NULL iz 3 odabrana stupca*/
SELECT Name, COALESCE(DiscontinuedDate, Sellenddate, SellStartDate) AS LastActivity
FROM SalesLT.Product;


-- CASE
/* Retcima u stupcu "SellEndDate" koji su NULL mijenjamo vrijednost "On Sale" u suprotnom mijenamo vrijednost u "Discontinued*/
SELECT Name,
	CASE
			WHEN SellEndDate IS NULL THEN 'On Sale'
			ELSE 'Discontinued'
		END AS SalesStatus
FROM SalesLT.Product;

/* Retcima u stupcu "Size" koji imaju vrijednost "S" mijenjamo vrijednost u "Small", retcima koji imaju vrijednost "M" mijenjamo vrijednost u "Medium", retcima koji imaju vrijednost "L" mijenjamo vrijednost u "Large", retcima koji imaju vrijednost "XL" mijenjamo vrijednost u "Extra-Large" i retcima koji su NULL mijenjamo vrijednost u "n/a"*/
SELECT Name,
	CASE Size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large'
		WHEN 'XL' THEN 'Extra-Large'
		ELSE ISNULL(Size, 'n/a')
	END AS ProductSize
FROM SalesLT.Product;