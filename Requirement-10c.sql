SELECT year( OrderDate ) AS year ,
       month( OrderDate ) AS month ,
       SUM( NumberOfUnits * CostOfUnits ) AS totalAmount
FROM Orders
GROUP BY year ,
         month
ORDER BY year ,
         month;