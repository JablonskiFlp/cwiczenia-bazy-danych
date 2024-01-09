EXPLAIN ANALYZE SELECT 
c.customerid, 
c.personid,
c.storeid,
c.territoryid,
soh.salesorderid, 
soh.orderdate, 
soh.duedate, 
soh.shipdate
FROM sales.customer c
INNER JOIN sales.salesorderheader soh ON c.customerid = soh.customerid
WHERE c.territoryid = 5;

-- CREATE INDEX idx_customerid ON sales.customer (customerid);
-- CREATE INDEX idx_territoryid ON sales.customer (territoryid);
-- CREATE INDEX idx_orderdate ON sales.salesorderheader (orderdate);

--Zadanie 1.
-- Różnice:
-- 	Czas planowania jest krótszy bez indeksów co może być spowodowane 
-- 	"odhaszowaniem" zaindeksowanych wartości przez PostgreSQL, natomiast czas wykonania operacji
-- 	jest krótszy, przy użyciu indeksów. Spowodowane jest to użyciem kopcowania przy użyciu indeksów. 
-- 	Można tez zauwazyc większy poziom zagnieżdżenia w przykładzei z użyciem indexów, co przynosi 
-- 	zauważalne korzyści w efektywności operacji na danych.
	
	



--Zadanie 2.
--a.
BEGIN TRANSACTION;
UPDATE production.product 
SET listprice = 1.1 * listprice 
WHERE productid = 680;
COMMIT;

--b.
BEGIN TRANSACTION;
DELETE FROM production.product 
WHERE productid = 707;
ROLLBACK;

--c
BEGIN TRANSACTION;
INSERT INTO person.contacttype
VALUES (10, filip, '10-10-2020');
COMMIT;


