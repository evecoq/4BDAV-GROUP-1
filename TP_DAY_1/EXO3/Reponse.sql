--1--
SELECT 
    E.FIRST_NAME || ' ' || E.LAST_NAME AS FULL_NAME,
    E.COMMISSION_PCT, 
    D.DEPARTMENT_NAME, 
    E.HIRE_DATE 
FROM 
    EMPLOYEES E
JOIN 
    DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE
    E.COMMISSION_PCT IS NOT NULL AND 
    E.SALARY BETWEEN 10000 AND 15000 AND 
    E.HIRE_DATE <= TO_DATE('05/06/2005', 'DD/MM/YYYY');

--2--
SELECT 
    COALESCE(D.DEPARTMENT_NAME, 'Sans département') AS departement,
    ROUND(AVG(E.SALARY),2) AS salaire_moyen,
    MIN(E.SALARY) AS salaire_min,
    MAX(E.SALARY) AS salaire_max,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY E.SALARY) AS salaire_median
FROM 
    employees E
LEFT JOIN 
    departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY 
    ROLLUP(D.DEPARTMENT_NAME);

--3--
SELECT 
    COALESCE(D.DEPARTMENT_NAME, 'Sans département') AS departement,
    ROUND(AVG(E.SALARY),2) AS salaire_moyen,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY E.SALARY) AS salaire_median
FROM 
    employees E
LEFT JOIN 
    departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY 
    ROLLUP(D.DEPARTMENT_NAME)
ORDER BY 
    salaire_moyen DESC, salaire_median DESC
FETCH FIRST 10 ROWS ONLY;

--4--
SELECT FIRST_NAME || ' ' || LAST_NAME AS NOM_COMPLET
FROM employees E 
INNER JOIN departments D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.SALARY > (SELECT AVG(SALARY) FROM employees)
AND D.DEPARTMENT_NAME LIKE '%IT%';

--5--
SELECT e1.employee_id AS id_employe,
    e1.FIRST_NAME || ' ' || e1.LAST_NAME AS nom_employe,
    e1.hire_date AS date_embauche_employe,
    e2.employee_id AS id_manager,
    e2.FIRST_NAME || ' ' || e2.LAST_NAME AS nom_manager,
    e2.hire_date AS date_embauche_manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.employee_id
WHERE e1.hire_date < e2.hire_date;




