SELECT
    CASEWHEN(BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM WORKER), 'YOUNGEST', 'ELDEST') AS TYPE, NAME, BIRTHDAY
FROM
(SELECT
    NAME, BIRTHDAY FROM WORKER
WHERE BIRTHDAY IN ((SELECT MAX(BIRTHDAY) FROM WORKER), (SELECT MIN(BIRTHDAY) FROM WORKER)))
ORDER BY BIRTHDAY DESC;
