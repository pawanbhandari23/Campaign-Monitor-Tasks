SELECT Name
FROM SalesPerson
WHERE SalesPersonId IN(SELECT DISTINCT
                        a.SalesPersonID
                       FROM Orders a INNER JOIN Customers b
                       ON a.CustomerID = b.CustomerID AND b.CustomerName = 'George');
					   