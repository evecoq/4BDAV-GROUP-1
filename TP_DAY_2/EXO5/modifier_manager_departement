CREATE OR REPLACE PROCEDURE modifier_manager_departement(
    p_department_id IN departments.department_id%TYPE,
    p_manager_id IN employees.employee_id%TYPE
) AS
BEGIN
    UPDATE departments
    SET manager_id = p_manager_id
    WHERE department_id = p_department_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Le manager du département ' || p_department_id || ' a été modifié.');
END;
/