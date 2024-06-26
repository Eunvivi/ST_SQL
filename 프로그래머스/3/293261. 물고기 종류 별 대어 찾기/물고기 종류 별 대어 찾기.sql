WITH MaxFish AS (
    SELECT fi.FISH_TYPE, MAX(fi.LENGTH) AS MAX_LENGTH
    FROM FISH_INFO fi
    WHERE fi.LENGTH >= 10
    GROUP BY fi.FISH_TYPE
)

SELECT fi.ID, fn.FISH_NAME, fi.LENGTH
FROM FISH_INFO fi
JOIN FISH_NAME_INFO fn ON fi.FISH_TYPE = fn.FISH_TYPE
JOIN MaxFish mf ON fi.FISH_TYPE = mf.FISH_TYPE AND fi.LENGTH = mf.MAX_LENGTH
ORDER BY fi.ID;
