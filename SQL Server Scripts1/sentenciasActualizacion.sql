

--Inssertar registros que están en una tabla distinta
/*Se han pasado todos los registros de la tabla person.person a la tabla personEjemplo importante los campos
los campo de destino no pueden ser menores a la tabla origen */

CREATE TABLE personEjemplo( first_name VARCHAR(50), last_name VARCHAR (50))

SELECT * FROM personEjemplo

INSERT INTO personEjemplo SELECT FirstName, LastName FROM person.person


--UPDATE INNER JOIN

select COUNT(p.BusinessEntityID) FROM person.person p

SELECT  *  FROM HumanResources.Employee e WHERE e.JobTitle = 'Senior Tool Designer'

select * FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = p.BusinessEntityID
WHERE e.JobTitle = 'Sales Representative'

select * FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = e.BusinessEntityID
WHERE p.Suffix = 'Sales Representative'

--Pasar datos de otra tabla con una consulta, en este caso sobreescribe el campo Suffix con los nuevos valores de la consulta

UPDATE person.person SET Suffix = e.NationalIDNumber
FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = p.BusinessEntityID 
WHERE e.JobTitle = 'Sales Representative'

--Se realiza la prueba y los los datos de Suffix y NationaIDNumber son los mismos cuando se cumple la condicion
SELECT p.Suffix, e.NationalIDNumber FROM person.person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = p.BusinessEntityID 
WHERE e.JobTitle = 'Sales Representative'

--DELETE INNER JOIN sirve para eliminar registros que coinciden con la condición que estoy buscando

--La ide es borrar estos registros que trae esta consulta
select * FROM person.EmailAddress e
INNER JOIN person.BusinessEntity b
ON b.BusinessEntityID = e.BusinessEntityID
INNER JOIN HumanResources.Employee h
ON h.BusinessEntityID = b.BusinessEntityID
WHERE h.JobTitle = 'Tool Designer'

DELETE e
FROM person.EmailAddress e
INNER JOIN person.BusinessEntity b
ON b.BusinessEntityID = e.BusinessEntityID
INNER JOIN HumanResources.Employee h
ON h.BusinessEntityID = b.BusinessEntityID
WHERE h.JobTitle = 'Tool Designer'




