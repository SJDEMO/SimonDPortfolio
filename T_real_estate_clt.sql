SELECT * FROM new_schema.real_estate_clt;
COMMIT;

Select City FROM real_estate_clt;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Charlotte NC', '')
WHERE City LIKE 'Charlotte NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Mint Hill NC', '')
WHERE City LIKE 'Mint Hill NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Cherryville NC', '')
WHERE City LIKE 'Cherryville NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Cashiers NC', '')
WHERE City LIKE 'Cashiers NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Belmont NC', '')
WHERE City LIKE 'Belmont NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Cameron NC', '')
WHERE City LIKE 'Cameron NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Peachland NC', '')
WHERE City LIKE 'Peachland NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Bayboro NC', '')
WHERE City LIKE 'Bayboro NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Edenton NC', '')
WHERE City LIKE 'Edenton NC%' ;

UPDATE real_estate_clt 
SET City = REPLACE(City, 'Big Sandy TN', '')
WHERE City LIKE 'Big Sandy TN%' ;


ALTER TABLE real_estate_clt
CHANGE City Zip INT;

SELECT 
	Zip,
    COUNT(Zip) AS Amount_of_Houses
FROM
	real_estate_clt
WHERE Zip IS NOT NULL
GROUP BY Zip
ORDER BY Amount_of_Houses DESC;

COMMIT;



#################################################################################################################################################

SELECT * FROM new_schema.real_estate_clt;

COMMIT;

SELECT 
	Price,
    Sqft
FROM
	real_estate_clt
where Sqft IS NOT NULL;

UPDATE real_estate_clt
SET Price = REPLACE(Price, ',', '')
WHERE Price LIKE '%,%' ;

UPDATE real_estate_clt
SET Price = REPLACE(Price, '.00', '')
WHERE Price LIKE '%.00%' ;

UPDATE real_estate_clt
SET Sqft = REPLACE(Sqft, ',', '')
WHERE Sqft LIKE '%,%' ;

SELECT 
	Zip,
	ROUND(AVG(Price),0) AS Avg_Price
FROM
	real_estate_clt
GROUP BY Zip;

SELECT 
	Zip,
	ROUND(AVG(Price),0) AS Avg_Price
FROM
	real_estate_clt
WHERE Zip IS NOT NULL
GROUP BY Zip;

COMMIT;

SELECT 
	Zip,
	ROUND(AVG(Price),0)/ROUND(AVG(Sqft),2) AS Avg_Price_per_Sqft
FROM
	real_estate_clt
WHERE Zip IS NOT NULL 
GROUP BY Zip;

SELECT 
	Zip,
	ROUND(AVG(Sqft),2) AS Avg_Sqft
FROM
	real_estate_clt
WHERE Zip IS NOT NULL 
GROUP BY Zip;


SELECT Price, Address, Zip FROM real_estate_clt;