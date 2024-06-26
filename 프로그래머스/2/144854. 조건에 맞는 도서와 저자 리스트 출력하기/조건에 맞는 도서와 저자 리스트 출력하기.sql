SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK a LEFT JOIN AUTHOR b ON a.AUTHOR_ID = b.AUTHOR_ID
WHERE CATEGORY = '경제'
ORDER BY PUBLISHED_DATE ASC;