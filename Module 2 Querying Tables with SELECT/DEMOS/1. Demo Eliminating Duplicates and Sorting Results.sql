-- NULL vrijednosti popunjavamo s None
SELECT ISNULL(Color, 'None') AS Color  FROM SalesLT.Product

-- jedinstvene boje
SELECT DISTINCT ISNULL(Color, 'None') AS Color  FROM SalesLT.Product

--- jedistvene boje poredane abecedno
SELECT DISTINCT ISNULL(Color, 'None') AS Color  FROM SalesLT.Product ORDER BY Color

-- jedinstvene boje i velicine
SELECT DISTINCT ISNULL(Color, 'None') AS Color, ISNULL(Size, '-') AS Size  FROM SalesLT.Product ORDER BY Color

--- odabir 100 proizvoda i njihovih cijena poredano po cijeni od najvece prema najmanjoj
SELECT TOP 100 Name, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC

--- prvih 10 redaka
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 2 ROWS FETCH NEXT 10 ROWS ONLY

--- od 3 do 13 retka
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 2 ROWS FETCH NEXT 10 ROWS ONLY

--- preskacemo prvih 10 i odabiremo sljedecih 10 redaka
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY