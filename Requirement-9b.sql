SELECT Name
FROM SalesPerson
WHERE SalesPersonId NOT IN( SELECT DISTINCT
                             a.SalesPersonID
                            FROM Orders AS a
                            INNER JOIN Customers AS b
                            ON a.CustomerID = b.CustomerID
                               AND b.CustomerName = 'George' );