SELECT
    b.USER_ID,
    NICKNAME, 
    SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD a
LEFT JOIN USED_GOODS_USER b ON a.WRITER_ID = b.USER_ID
WHERE a.STATUS ='DONE'
GROUP BY b.USER_ID
HAVING SUM(PRICE) >= 700000
ORDER BY TOTAL_SALES