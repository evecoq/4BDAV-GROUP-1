DECLARE
    v_Idvol VARCHAR2(10) := 'BA270';
    v_Date_heure_depart TIMESTAMP := TO_TIMESTAMP('2023-05-06 10:15:00', 'YYYY-MM-DD HH24:MI:SS');
    v_Date_heure_arrivee TIMESTAMP := TO_TIMESTAMP('2023-05-06 12:15:00', 'YYYY-MM-DD HH24:MI:SS');
    v_Ville_depart VARCHAR2(50) := 'Rome';
    v_Ville_arrivee VARCHAR2(50) := 'Paris';
BEGIN
    INSERT INTO VOL (Idvol, Date_heure_depart, Date_heure_arrivee, Ville_depart, Ville_arrivee)
    VALUES (v_Idvol, v_Date_heure_depart, v_Date_heure_arrivee, v_Ville_depart, v_Ville_arrivee);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Vol inséré avec succès.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erreur lors de l''insertion du vol : ' || SQLERRM);
END;
/
