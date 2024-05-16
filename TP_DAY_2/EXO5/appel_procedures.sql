DECLARE
    v_employee_id employees.employee_id%TYPE := 100;
    v_department_id departments.department_id%TYPE := 10;
    v_percentage NUMBER := 10;
    v_manager_id employees.employee_id%TYPE := 101;

    v_salaire_moyen_median VARCHAR2(1000);
BEGIN
    augmenter_salaire(v_employee_id, v_percentage);
    modifier_manager_departement(v_department_id, v_manager_id);
    v_salaire_moyen_median := salaire_moyen_median_departement(v_department_id);
    DBMS_OUTPUT.PUT_LINE('Actions terminées avec succès.');
    DBMS_OUTPUT.PUT_LINE('Résultat du salaire moyen et médian du département ' || v_department_id || ' : ' || v_salaire_moyen_median);
END;
/