WITH TotalScores AS (
    SELECT 
        g.EMP_NO,
        SUM(g.SCORE) AS SCORE
    FROM HR_GRADE g
    WHERE g.YEAR = 2022
    GROUP BY g.EMP_NO
),
MaxScore AS (
    SELECT MAX(SCORE) AS MAX_SCORE 
    FROM TotalScores
)
SELECT 
    t.SCORE,
    t.EMP_NO,
    e.EMP_NAME,
    e.POSITION,
    e.EMAIL
FROM TotalScores t
JOIN HR_EMPLOYEES e ON t.EMP_NO = e.EMP_NO
JOIN MaxScore ms ON t.SCORE = ms.MAX_SCORE 