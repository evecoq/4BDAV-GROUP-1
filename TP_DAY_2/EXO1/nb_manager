DECLARE
    v_manager_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_manager_count
    FROM employees
    INNER JOIN jobs ON employees.job_id = jobs.job_id
    WHERE UPPER(jobs.job_title) LIKE '%MANAGER';
    DBMS_OUTPUT.PUT_LINE('Nombre d''employés dont la fonction est "Manager" : ' || v_manager_count);
END;