SELECT ANIMAL_TYPE, COUNT(*) AS `count`
FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ('Cat', 'Dog')
GROUP BY ANIMAL_TYPE
ORDER BY CASE ANIMAL_TYPE WHEN 'Cat' THEN 1 ELSE 0 END DESC;
