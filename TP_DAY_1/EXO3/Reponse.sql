--1--
SELECT concat(FIRST_NAME, '',LAST_NAME) FROM EMPLOYEES  E
WHERE
E.COMMISSION_PCT is not null and 
E.SALARY BETWEEN 10000 and 15000 and 
E.HIRE_DATE <= '05/06/2005'

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
           CONCAT(e1.NOM, ' ', e1.prenom) AS nom_employe,
           e1.hire_date AS date_embauche_employe,
           e2.employee_id AS id_manager,
           CONCAT(e2.nom, ' ', e2.prenom) AS nom_manager,
           e2.hire_date AS date_embauche_manager
    FROM employees e1
    JOIN employees e2 ON e1.manager_id = e2.employee_id
    WHERE e1.hire_date < e2.hire_date




