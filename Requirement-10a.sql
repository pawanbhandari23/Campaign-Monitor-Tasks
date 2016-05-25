SELECT DISTINCT
 a.Name
FROM ( SELECT Name ,
              Salary ,
              ROW_NUMBER(  ) OVER( 
                                   ORDER BY salary DESC ) AS rownum
       FROM SalesPerson ) AS a
WHERE a.rownum = 3;