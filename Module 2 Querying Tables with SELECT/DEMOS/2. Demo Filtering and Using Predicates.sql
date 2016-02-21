-- izlistavanje informacije o modelu broj 6
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID = 6

-- izlistavanje informacije o modelu ciji je broj veci od 6
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID > 6

-- izlistavanje informacije o modelu ciji je broj veci ili jednak 6
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID >= 6

-- izlistavanje informacije o modelu ciji je broj nije jednak 6
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID <> 6

-- lista proizvoda koji pocinju s FR
SELECT ProductNumber, Name, Size FROM SalesLT.Product WHERE ProductNumber LIKE 'FR%'

-- trazimo slovo R bilo gdje u ....
SELECT ProductNumber, Name, Size FROM SalesLT.Product WHERE ProductNumber LIKE '%R%'


SELECT Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';

SELECT ProductNumber, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';

-- pronalazenje proizvoda koji imaju sales end date
SELECT Name FROM SalesLT.Product WHERE SellEndDate IS NOT NULL

--- proizvodi koji imaju sell end date u 2006
SELECT Name from SalesLT.Product where SellEndDate between '2006/1/1' and '2006/12/31'

-- proizvodi koji se nalaze u kategorijama specificiranim u listi
SELECT ProductCategoryID, Name from SalesLT.Product where ProductCategoryID in (5,6,7)

-- proizvodi koji pripadaju kategoriji iz liste i SellEndDate nije NULL
SELECT ProductCategoryID, Name, ListPrice, SellEndDate FROM SalesLT.Product WHERE ProductCategoryID IN (5, 6, 7) AND SellEndDate IS NULL;


-- odabir proizvoda koji imaju category ID  5, 6, ili 7 ili  product number koji pocinje FR
SELECT Name, ProductCategoryID, ProductNumber FROM SalesLT.Product WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5,6,7);