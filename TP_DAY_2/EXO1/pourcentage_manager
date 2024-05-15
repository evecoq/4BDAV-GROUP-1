DECLARE
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