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
SELECT COALESCE(departement, 'Sans département') AS departement
,AVG(salaire) as salaire_moyen 
, min(salaire) as salaire_min
, max(salaire) as salaire_max
,PERCENTILE_CONT( 0.5 )  WITHIN GROUP ( ORDER BY salaire) as salaire_median
FROM employer
GROUP BY   departement WITH ROLLUP

--3--

SELECT COALESCE(departement, 'Sans département') AS departement
,AVG(salaire) as salaire_moyen 
,PERCENTILE_CONT( 0.5 )  WITHIN GROUP ( ORDER BY salaire) as salaire_median
FROM employer
GROUP BY   departement WITH ROLLUP
ORDER BY salaire_moyen  DESC ,salaire_median DESC
LIMIT 10 

--4--
SELECT CONCAT(nom,'',prenom)as NOM,
from employer E inner JOIN departement D on E.fkid_departement = D.pkid_departement
WHERE  salaire > (SELECT AVG(salaire) FROM emloyer )
AND D.nom_departement ='informatique'

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




