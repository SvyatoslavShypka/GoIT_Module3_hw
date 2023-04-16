SELECT PROJECT_ID AS NAME, SUM(SALARY * ((YEAR(FINISH_DATE) - YEAR(START_DATE)) * 12
                                       + MONTH(FINISH_DATE) - MONTH(START_DATE)))
    AS PRICE FROM PROJECT_WORKER
    INNER JOIN PROJECT AS P on P.ID = PROJECT_WORKER.PROJECT_ID
    INNER JOIN WORKER W on W.ID = PROJECT_WORKER.WORKER_ID
GROUP BY PROJECT_ID;
