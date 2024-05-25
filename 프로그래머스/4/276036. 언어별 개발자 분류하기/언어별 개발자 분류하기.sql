WITH CODES AS (
    SELECT
        (SELECT CODE FROM SKILLCODES WHERE NAME = 'PYTHON') PYCODE,
        (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#') C_CODE,
        (SELECT SUM(CODE) FROM SKILLCODES WHERE CATEGORY = 'FRONT END') FECODE
    FROM DUAL
)

SELECT CASE 
            WHEN (SKILL_CODE & FECODE) AND (SKILL_CODE & PYCODE) THEN 'A'
            WHEN SKILL_CODE & C_CODE THEN 'B'
            WHEN SKILL_CODE & FECODE THEN 'C'
        END GRADE, ID, EMAIL
FROM DEVELOPERS, CODES
WHERE SKILL_CODE & (FECODE+C_CODE)
ORDER BY GRADE, ID