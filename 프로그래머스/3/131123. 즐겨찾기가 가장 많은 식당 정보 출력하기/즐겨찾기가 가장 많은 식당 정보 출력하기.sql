SELECT RI.FOOD_TYPE, RI.REST_ID, RI.REST_NAME, RI.FAVORITES
FROM REST_INFO RI
JOIN (
    SELECT FOOD_TYPE, MAX(FAVORITES) AS MAX_FAVORITES
    FROM REST_INFO
    GROUP BY FOOD_TYPE
) MF
ON RI.FOOD_TYPE = MF.FOOD_TYPE AND RI.FAVORITES = MF.MAX_FAVORITES
ORDER BY RI.FOOD_TYPE DESC;