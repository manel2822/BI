/*nombre de commande livrées par rapport client 
SELECT C.Country ,C.City,count(*)as nb_commande,YEAR(OrderDate) as Year ,MONTH(OrderDate) as Month  from Orders O,Customers C ,Employees E
where  O.CustomerID=C.CustomerID and O.EmployeeID=E.EmployeeID and  ShippedDate is not null group by C.Country,C.City,YEAR(OrderDate) ,MONTH(OrderDate) order by YEAR(OrderDate) ,MONTH(OrderDate) 
*/


/*nombre de commande non livrées par rapport client */
SELECT C.Country ,C.City,count(*)as nb_commande_non_livrée,YEAR(OrderDate) as Year ,MONTH(OrderDate) as Month  from Orders O,Customers C ,Employees E
where  O.CustomerID=C.CustomerID and O.EmployeeID=E.EmployeeID and  ShippedDate is  null group by C.Country,C.City,YEAR(OrderDate) ,MONTH(OrderDate) order by YEAR(OrderDate) ,MONTH(OrderDate) 
