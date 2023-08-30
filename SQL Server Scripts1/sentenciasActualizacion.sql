--Inssertar registros que están en una tabla distinta
/*Se han pasado todos los registros de la tabla person.person a la tabla personEjemplo importante los campos
los campo de destino no pueden ser menores a la tabla origen */

CREATE TABLE personEjemplo( first_name VARCHAR(50), last_name VARCHAR (50))

SELECT * FROM personEjemplo

INSERT INTO personEjemplo SELECT FirstName, LastName FROM person.person


--UPDATE INNER JOIN

select * FROM person.person p
SELECT * FROM HumanResources.Employee e

select * FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = e.BusinessEntityID
WHERE e.JobTitle = 'Sales Representative'

select * FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = e.BusinessEntityID
WHERE p.Suffix = 'Sales Representative'

UPDATE person.person SET Suffix = e.NationalIDNumber
FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = e.BusinessEntityID 
WHERE e.JobTitle = 'Sales Representative'


