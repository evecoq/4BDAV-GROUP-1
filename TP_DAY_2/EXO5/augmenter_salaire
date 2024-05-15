CREATE OR REPLACE PROCEDURE augmenter_salaire(
    p_employee_id IN employees.employee_id%TYPE,
    p_percentage IN NUMBER
) AS
    v_new_salary NUMBER;
BEGIN
SELECT salary * (1 + p_percentage / 100) INTO v_new_salary
FROM employees
WHERE employee_id = p_employee_id;

UPDATE employees
SET salary = v_new_salary
WHERE employee_id = p_employee_id;

COMMIT;

DBMS_OUTPUT.PUT_LINE('Le salaire de l''employé ' || p_employee_id || ' a été augmenté de ' || p_percentage || '%.');
END;
/