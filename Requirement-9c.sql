SELECT Name
FROM SalesPerson AS a
INNER JOIN( SELECT DISTINCT
             SalesPersonID ,
             COUNT( OrderID )
            FROM Orders
            GROUP BY SalesPersonID
            HAVING COUNT( OrderID ) >= 2 ) AS b
ON a.SalesPersonID = b.SalesPersonID;