--Écrire un programme permettant de calculer la moyenne des salaires des pilotes dont l’âge est entre 45 et 55 ans.

DECLARE
    salaire_moy NUMBER;
    age_min INT := 45;
    age_max INT := 55;
BEGIN
    SELECT AVG(Salaire)
    INTO salaire_moy
    FROM PILOTE
    WHERE Age BETWEEN age_min AND age_max;
    DBMS_OUTPUT.PUT_LINE('La moyenne des salaires des pilotes âgés entre 45 et 55 ans est : ' || salaire_moy);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Aucun pilote trouvé dans la tranche d''âge spécifiée.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erreur : ' || SQLERRM);
END;

--Écrire un programme permettant de calculer le salaire annuel d'un pilote
DECLARE
    CURSOR pilote_cur IS
        SELECT matricule, nom, salaire * 12 AS salaire_annee 
        FROM PILOTE;
    
    v_pilote pilote_cur%ROWTYPE;
BEGIN
    OPEN pilote_cur;
    LOOP
        FETCH pilote_cur INTO v_pilote;
        EXIT WHEN pilote_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Matricule: ' || v_pilote.matricule || ', Nom: ' || v_pilote.nom || ', Salaire Annuel: ' || v_pilote.salaire_annee);
    END LOOP;
    CLOSE pilote_cur;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erreur lors du traitement des salaires : ' || SQLERRM);
END;
