CREATE OR REPLACE FUNCTION salaire_moyen_median_departement(
    p_department_id IN departments.department_id%TYPE
) RETURN VARCHAR2 AS
    v_salaire_moyen NUMBER;
    v_salaire_median NUMBER;
BEGIN
    SELECT AVG(salary) INTO v_salaire_moyen
    FROM employees
    WHERE department_id = p_department_id;

    SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary) INTO v_salaire_median
    FROM employees
    WHERE department_id = p_department_id;

    RETURN 'Le salaire moyen du département ' || p_department_id || ' est : ' || v_salaire_moyen || ' et le salaire médian est : ' || v_salaire_median;
END;
/