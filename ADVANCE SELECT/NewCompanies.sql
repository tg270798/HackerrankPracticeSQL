SELECT C.Company_code, C.founder, 
COUNT(DISTINCT(LM.lead_manager_code)) AS LMCount,
COUNT(DISTINCT(SM.Senior_manager_code)) AS SMCount,
COUNT(DISTINCT(M.Manager_code)) AS MCount,
COUNT(DISTINCT(E.employee_code)) AS ECount

FROM Company C, Lead_Manager LM, Senior_Manager SM, Manager M, Employee E
WHERE
C.Company_code = LM.Company_code AND
LM.lead_manager_code = SM.lead_manager_code AND
SM.Senior_manager_code = M.Senior_manager_code AND
M.Manager_code = E.Manager_code
GROUP BY C.Company_code, C.founder
ORDER BY C.Company_code
