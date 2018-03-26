### https://www.sisense.com/blog/8-ways-fine-tune-sql-queries-production-databases/
1. where tableA.id=tableB.id vs inner join
2. having 和 where 顺序

    SELECT Customers.CustomerID, Customers.Name, Count(Sales.SalesID)
    FROM Customers
      INNER JOIN Sales
      ON Customers.CustomerID = Sales.CustomerID
    WHERE Sales.LastSaleDate BETWEEN #1/1/2016# AND #12/31/2016#
    GROUP BY Customers.CustomerID, Customers.Name
    
    SELECT Customers.CustomerID, Customers.Name, Count(Sales.SalesID)
    FROM Customers
       INNER JOIN Sales
       ON Customers.CustomerID = Sales.CustomerID
    WHERE Sales.LastSaleDate BETWEEN #1/1/2016# AND #12/31/2016#
    GROUP BY Customers.CustomerID, Customers.Name
    HAVING Count(Sales.SalesID) > 5
    
 3. 

