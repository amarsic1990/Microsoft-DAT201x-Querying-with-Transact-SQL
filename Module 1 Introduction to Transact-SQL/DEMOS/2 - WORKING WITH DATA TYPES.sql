-- CAST
/* Mijenjanje type-a stupcu ProductId iz broja u  string i spajanje s imenom proizvoda*/
SELECT CAST(ProductID AS VARCHAR(5)) + ':' + Name AS ProductName
FROM SalesLT.Product;

-- CONVERT
/* Konvertiranje broja u string*/
SELECT CONVERT(VARCHAR(5), ProductID) + ':' + Name AS Productname
FROM SalesLT.Product;

/* Konvertiranje datuma u razlicite formate*/
SELECT SellStartDate,
	CONVERT(NVARCHAR(30), SellStartDate) AS ConvertedDate,
	CONVERT(NVARCHAR(30), SellStartDate, 126) AS ISO8601FormatDate
FROM SalesLT.Product;


/* ERROR --> ne mozemo "M" konvertirati u broj*/
SELECT Name, CAST(Size AS Integer) AS NumericSize
FROM SalesLT.Product;

/*ono sto se ne uspije konvertirati u broj postaje "NULL" */
SELECT Name, TRY_CAST(Size AS Integer) AS NumericSize
FROM SalesLT.Product;
