---Zadanie 1.
--OPCJA 1: Pracownik z największym wynagrodzeniem w historii
WITH
  workers AS 
  (
    SELECT
      person.person.businessentityid,
      person.person.firstname,
      person.person.lastname
    FROM
      person.person
  ),
  pays AS 
  (
    SELECT
      humanresources.employeepayhistory.businessentityid,
      MAX(humanresources.employeepayhistory.rate) AS rate
    FROM
      humanresources.employeepayhistory
    GROUP BY
	  humanresources.employeepayhistory.businessentityid
  ),
  TempEmployeeInfo AS 
  (
    SELECT
       rate, firstname, lastname, pays.businessentityid
    FROM
      workers
    JOIN pays ON workers.businessentityid = pays.businessentityid
  )
SELECT
  *
FROM
  TempEmployeeInfo;

--OPCJA 2: Pracownik z największym wynagrodzeniem w historii
WITH
  workers AS 
  (
    SELECT
      person.person.businessentityid,
      person.person.firstname,
      person.person.lastname
    FROM
      person.person
  ),
  pays AS 
  (
    SELECT
      humanresources.employeepayhistory.businessentityid,
      MAX(humanresources.employeepayhistory.rate) AS rate
    FROM
      humanresources.employeepayhistory
	WHERE
  		rate = (SELECT MAX(rate) FROM humanresources.employeepayhistory) 
    GROUP BY
	  humanresources.employeepayhistory.businessentityid
  ),
  TempEmployeeInfo AS 
  (
    SELECT
      rate, firstname, lastname, pays.businessentityid
    FROM
      workers
    JOIN pays ON workers.businessentityid = pays.businessentityid
  )
SELECT
  *
FROM
  TempEmployeeInfo;
 
--Zadanie 2.
WITH
    zap_join AS
        (
            SELECT person.person.businessentityid, sales.customer.customerid, sales.customer.territoryid, person.person.firstname, person.person.lastname
            FROM sales.customer
            JOIN sales.salesterritory ON sales.customer.territoryid = sales.salesterritory.territoryid
            JOIN sales.salesperson ON sales.salesterritory.territoryid = sales.salesperson.territoryid
            JOIN person.person ON sales.salesperson.businessentityid = person.person.businessentityid
        )
    SELECT *
    FROM zap_join;
	  	
	  
