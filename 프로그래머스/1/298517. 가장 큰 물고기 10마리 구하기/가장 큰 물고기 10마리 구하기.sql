WITH temp AS (
    SELECT ID, LENGTH, ROW_NUMBER() OVER (ORDER BY LENGTH DESC) AS num
    FROM FISH_INFO
)
SELECT ID, LENGTH
FROM temp
WHERE num <= 10
ORDER BY LENGTH DESC, ID ASC;
