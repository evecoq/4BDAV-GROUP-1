CREATE OR REPLACE PROCEDURE count_records_per_table AS
    v_result VARCHAR2(1000);
BEGIN
    FOR rec IN (SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER = 'HR') LOOP
        EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM HR.' || rec.TABLE_NAME INTO v_result;
        DBMS_OUTPUT.PUT_LINE('Nombre d''enregistrements dans la table ' || rec.TABLE_NAME || ' : ' || v_result);
    END LOOP;
END;
/

CREATE OR REPLACE PROCEDURE count_managers AS
    v_manager_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_manager_count
    FROM employees
    INNER JOIN jobs ON employees.job_id = jobs.job_id
    WHERE UPPER(jobs.job_title) LIKE '%MANAGER';
    DBMS_OUTPUT.PUT_LINE('Nombre d''employés dont la fonction est "Manager" : ' || v_manager_count);
END;
/

CREATE OR REPLACE PROCEDURE calculate_manager_percentage AS
    v_total_employees NUMBER;
    v_manager_count NUMBER;
    v_manager_percentage NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_total_employees FROM employees;
    SELECT COUNT(*) INTO v_manager_count
    FROM employees
    INNER JOIN jobs ON employees.job_id = jobs.job_id
    WHERE UPPER(jobs.job_title) LIKE '%MANAGER';
    v_manager_percentage := (v_manager_count / v_total_employees) * 100;
    DBMS_OUTPUT.PUT_LINE('Pourcentage de managers parmi tous les employés : ' || v_manager_percentage || '%');
END;
/


BEGIN
    -- Appeler la procédure pour compter le nombre d'enregistrements dans chaque table
    count_records_per_table;

    -- Appeler la procédure pour compter le nombre d'employés dont la fonction est "Manager"
    count_managers;

    -- Appeler la procédure pour calculer le pourcentage de managers parmi tous les employés
    calculate_manager_percentage;
END;
/