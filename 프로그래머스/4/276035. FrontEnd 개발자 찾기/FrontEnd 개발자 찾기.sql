WITH FE AS (
    SELECT *
    FROM SKILLCODES
    WHERE CATEGORY ='Front End')

SELECT DISTINCT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS a INNER JOIN FE b ON a.SKILL_CODE & b.CODE
ORDER BY ID
