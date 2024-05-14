--1--
SELECT concat(Prenom, '',nom) FROM Employer  E
WHERE
E.comission is not null and 
E.salaire BETWEEN 10000 and 15000 and 
E.date_embauche <= '05/06/2005'

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

WITH MANAGER AS (
SELECT employee_id AS id_employe,
       CONCAT(first_name, ' ', last_name) AS nom_employe,
       hire_date AS date_embauche_employe,
FROM Employer )
 SELECT 




