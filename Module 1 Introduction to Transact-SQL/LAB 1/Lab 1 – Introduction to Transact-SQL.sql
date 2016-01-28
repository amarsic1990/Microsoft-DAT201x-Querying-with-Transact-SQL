--- Challenge 1: Retrieve Customer Data ---

-- 1. Retrieve customer details
SELECT *
FROM SalesLT.Customer;

-- 2. Retrieve customer name data
SELECT Title, FirstName, MiddleName, LastName, Suffix
FROM SalesLT.Customer;

-- 3. Retrieve customer names and phone numbers
SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;


--- Challenge 2: Retrieve Customer and Sales Data ---

-- 1. Retrieve a list of customer companies
SELECT CONVERT(VARCHAR, CustomerID) + ':  ' + CompanyName
FROM SalesLT.Customer;

-- 2. Retrieve a list of sales order revisions
SELECT SalesOrderNumber + '  (' + CONVERT(NVARCHAR, RevisionNumber) + ')', CONVERT(NVARCHAR, OrderDate, 102) AS ISOFormatDate
FROM SalesLT.SalesOrderHeader;



--- Challenge 3: Retrieve Customer Contact Details ---

-- 1. Retrieve customer contact names with middle names if known
SELECT FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName AS CustomerName
FROM SalesLT.Customer;

-- 2. Retrieve primary contact details
UPDATE SalesLT.Customer 
SET EmailAddress = NULL 
WHERE CustomerID % 7 = 1;

SELECT CustomerID, COALESCE(EmailAddress, Phone) As PrimaryContact
FROM SalesLT.Customer;


-- 3. Retrieve shipping status
UPDATE SalesLT.SalesOrderHeader 
SET ShipDate = NULL 
WHERE SalesOrderID > 71899;


SELECT SalesOrderID,
	CASE
		WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
		ELSE 'Shipped'
	END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;