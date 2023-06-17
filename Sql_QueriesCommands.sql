use huyinit_lecture3_queriescommands;
CREATE TABLE customers (
    CustomerID INT,
    CustomerName NVARCHAR(100),
    ContactName NVARCHAR(100),
    Address NVARCHAR(100),
    City VARCHAR(100),
    PostalCode VARCHAR(100),
    Country VARCHAR(100)
);
SELECT  * FROM customers;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','05021','Mexico') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (3,'Antonio Moreno TaquerÃ-a','Antonio Moreno','Mataderos 2312','MÃ©xico D.F.','05023','Mexico') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (5,'Berglunds snabbkÃ¶p','Christina Berglund','BerguvsvÃ¤gen 8','LuleÃ¥','S-958 22','Sweden') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (7,'Blondel pÃ¨re et fils','FrÃ©dÃ©rique Citeaux','24, place KlÃ©ber','Strasbourg','67000','France') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (8,'BÃ³lido Comidas preparadas','MartÃ-n Sommer','C/ Araquil, 67','Madrid','28023','Spain') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (9,'Bon app\'','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (11,'B\'s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','MÃ©xico D.F.','05022','Mexico') ;

insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (15,'ComÃ©rcio Mineiro','Pedro Afonso','Av. dos LusÃ-adas, 23','SÃ£o Paulo','05432-043','Brazil') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,`PostalCode`,`Country`) 
 values (19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK') ;
insert into customers(`CustomerID`,`CustomerName`,`ContactName`,`City`,`PostalCode`,`Country`) 
 values (20,'Ernst Handel','Roland Mendel','Graz','8010','Austria') ;
 
 -- ----------------------------------------------------------------------------------------------
 select CustomerName, City, Country from Customers;
 select distinct Country from Customers; -- xuat ra cac quoc gia (khong tinh trung nhau)
 select count(Country) from Customers;
 
 select * from Customers where Country = "Mexico";
 select * from Customers where CustomerID >=10;
 select * from Customers where Country ="Germany" and City = "Berlin";
select * from Customers where not Country = "Germany";

select * from Customers order by Country; -- xap sep tang dan theo dat nuoc 
select * from Customers order by Country DESC; -- xap sep giam dan theo dat nuoc 
select * from Customers order by Country, CustomerName; -- if duplicate country => increce of name
select * from Customers order by Country asc, CustomerName desc; -- tang country, giam name
 
 insert into customers(CustomerID,CustomerName, ContactName, Address, City, PostalCode,Country)
 values(21, "Nguyen Phu Trong", "TrongCT", "Ha Noi", "TP Ha Noi", "1234", "Viet Nam");
  insert into customers()
 values(22, "Nguyen Xuan Phuc", "TrongPT", "Quang Nam", "TP QuanG NAM", "1345", "Viet Nam");
 select CustomerName, ContactName, Address from Customers where Address is null;
  select CustomerName, ContactName, Address from Customers where Address is not null;

-- SET SQL_SAFE_UPDATES = 0;
-- update Customers set ContactName = 'Alfred Schmidt', City = 'Frankfurt' where CustomerID < 5;
update Customers set PostalCode = 00000 where Country = 'Mexico'; -- update + (set + where)

delete from Customers where CustomerName = 'Alfreds Futterkiste';

select * FROM Customers limit 3; -- 0=>3
select * FROM Customers limit 2,5 ; 

-- -----------------------------------------------------------------------------------------------
select MIN(CustomerID) as SmallestPrice from customers;
select MAX(CustomerID) as SmallestPrice from customers;

select MIN(contactName) as Smallestname from customers;
select MAX(contactName) as Smallestname from customers;
select sum(CustomerID) from customers;

select * from Customers where CustomerName like 'a%'; -- tim khach hang co ten bat dau bang chu cai a
select * from Customers where CustomerName like '%b%'; -- tim khach hang co ten co chu b
select * from Customers where CustomerName like '%e'; -- tim khach hang co ten ket thuc bang e
select * from Customers where CustomerName like '_r%'; -- r thu 2
select * from Customers where City like 'L_n_on'; -- wincard
select * from Customers where City like '%es%';

select * from Customers where Country in ('Germany', 'France','UK');
select * from Customers where Country not in ('Germany', 'France','UK');
-- select * from Customers where Country in(select Country from Suppliers); -- lay gia tri country tu 1 bang khac
select * from Customers where CustomerID between 5 and 10;
SELECT * FROM Customers WHERE ContactName BETWEEN 'Christina Berglund' AND 'Elizabeth Lincoln'  order by ContactName;

select CustomerID as id, CustomerName as customer from Customers;
select CustomerName, concat_ws(' , ', Address, PostalCode, City, Country) as "new Address" from Customers; -- noi cac cot va dat ten moi

-- ---------------------------------------------------------------------------------------------------------------------
create table Orders(
OrderID INT,
CustomerID INT,
EmployeeID INT,
OrderDate varchar(50),
ShipperID INT);
-- CustomerID INT NOT NULL, foreign key(CustomerID) references customers(CustomerID),
drop table Orders;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10248,5,5,'1996-07-04',3) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
values (10249,8,6,'1996-07-05',1) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10250,9,4,'1996-07-08',2) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10251,10,3,'1996-07-08',1) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10252,11,4,'1996-07-09',2) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10253,12,3,'1996-07-10',2) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10254,13,5,'1996-07-11',2) ;
insert into `Orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`) 
 values (10255,100,9,'1996-07-12',3) ;

select Orders.OrderID, Customers.CustomerName, Orders.OrderDate 
from Orders inner join Customers on Orders.CustomerID = Customers.CustomerID;

select Customers.CustomerName, Orders.OrderID
FROM Customers left join Orders 
on Customers.CustomerID = Orders.CustomerID order by Customers.CustomerName;

select Customers.CustomerName, Customers.ContactName, Orders.OrderID, Orders.ShipperID 
from Customers left join Orders on Customers.CustomerID = Orders.CustomerID order by Customers.CustomerID;

select Customers.CustomerName, Orders.OrderID
FROM Customers right join Orders on Customers.CustomerID = Orders.CustomerID order by Customers.CustomerName;

select Customers.CustomerName, Orders.OrderID
from Customers cross join Orders;

select Customers.CustomerName, Orders.OrderID
FROM Customers cross join Orders where Customers.CustomerID = Orders.CustomerID;

select A.CustomerName as CustomerName1, B.CustomerName as CustomerName2, A.City
from Customers A, Customers B
where A.CustomerID <> B.CustomerID AND A.City = B.City order by A.City;

select CustomerID from Customers
union 
select CustomerID from Orders
order by CustomerID;

select CustomerID from Customers
where Country = 'Germany'
union all
 select CustomerID from Orders
 where shipperid > 2 
 order by CustomerID;

select count(CustomerID), Country
from Customers
group by Country
order by count(CustomerID) desc;

select count(CustomerID), Country
from Customers
group by Country
having count(CustomerID) > 2; -- having co the su dung chuc nang tong hop

select count(OrderID), ShipperID
from Orders
group by ShipperID
having count(OrderID) > 1;

select CustomerID from Customers
where exists(select * from orders where ShipperID = 1); -- kiem tra dk ton tai

-- liet ke nhung khach hang duoc shipper co id=1 giao hang

select * from Customers
where exists
(select * from Orders
					where (Customers.CustomerID= Orders.CustomerID)
                    AND ShipperID = 1);

select CustomerID, Address from Customers
where CustomerID = ANY 
(select EmployeeID from Orders where ShipperID = 3);

select CustomerID, Address from Customers
	where CustomerID = all 
		(select EmployeeID from Orders
			where ShipperID = 3);

select CustomerID, Address from Customers
	where CustomerID = all
		(select ShipperID  from Orders
			where EmployeeID = 4);

select OrderID,
CASE 
	when OrderID > 10250 then 'The orderid is greater than 10250'
    when OrderID = 10250 then 'The OrderID is 10250'
    else 'the OrderID is under 10250'
    
    end as OrderIDText from Orders;
    








