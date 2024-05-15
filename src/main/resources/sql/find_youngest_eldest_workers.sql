WITH yongest AS (
SELECT 'YOUNGEST' AS TYPE, NAME, BIRTHDAY
FROM worker
WHERE BIRTHDAY = (
SELECT MIN(BIRTHDAY)
FROM worker
)
),
 eldest AS (
 SELECT 'OLDEST' AS TYPE, NAME, BIRTHDAY
 FROM worker
 WHERE BIRTHDAY = (
 SELECT MAX(BIRTHDAY)
 FROM worker
 )
 )
 SELECT * FROM yongest
 UNION ALL
 SELECT * FROM eldest;
