/*nombre de commande livrées par rapport client */
SELECT C.Country ,C.City,count(*)as nb_commande from Orders O,Customers C 
where  O.CustomerID=C.CustomerID and ShippedDate is not null group by C.Country,C.City

/*nombre de commande livrées par rapport EmployeeId
SELECT C.Country ,C.City,count(*)as nb_commande from Orders O,Employees E
where  O.EmployeeID=E.EmployeeID and ShippedDate is not null group by E.Country,E.City
*/


/*nombre de commande livrées par rapport Temps
SELECT YEAR(OrderDate) as Year ,MONTH(OrderDate) as Month ,count(*) as nb_order  from Orders O
where ShippedDate is not null group by YEAR(OrderDate) ,MONTH(OrderDate) order by YEAR(OrderDate) ,MONTH(OrderDate) ; */


/*nombre de commande non livrées par rapport client 
SELECT C.Country ,C.City,count(*)as nb_commande from Orders O,Customers C 
where  O.CustomerID=C.CustomerID and ShippedDate is  null group by C.Country,C.City
*/
/*nombre de commande non livrées par rapport EmployeeId
SELECT C.Country ,C.City,count(*)as nb_commande from Orders O,Employees E
where  O.EmployeeID=E.EmployeeID and ShippedDate is not null group by E.Country,E.City
*/


/*nombre de commande non livrées par rapport Temps
SELECT YEAR(OrderDate) as Year ,MONTH(OrderDate) as Month ,count(*) as nb_order  from Orders O
where ShippedDate is not null group by YEAR(OrderDate) ,MONTH(OrderDate) order by YEAR(OrderDate) ,MONTH(OrderDate) ; */