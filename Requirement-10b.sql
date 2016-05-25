SELECT b.CustomerID ,
       b.amount AS TotalOrderValue
INTO BigOrders
FROM ( SELECT a.CustomerID ,
              SUM( a.amount ) AS amount
       FROM ( SELECT orderID ,
                     CustomerID ,
                     [NumberOfUnits * CostOfUnit] AS amount
              FROM Orders ) AS a
       GROUP BY a.CustomerID ) AS b
WHERE b.amount > 1000;