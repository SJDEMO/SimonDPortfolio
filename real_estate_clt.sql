Select * from real_estate_clt;
DELETE from real_estate_clt where Price IS NULL;
ALTER TABLE real_estate_clt
DROP COLUMN FIELD1;

SELECT 
    *
FROM
    real_estate_clt
WHERE
    Price >= '300000' AND Price <= '500000'
        AND City LIKE '%28277';
        
SELECT 
    *
FROM
    real_estate_clt;
    
UPDATE real_estate_clt 
SET 
    Beds = '1'
WHERE
    Beds LIKE '%bed%';
    
    
