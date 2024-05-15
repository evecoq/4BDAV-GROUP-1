CREATE OR REPLACE TRIGGER supprimer_manager
BEFORE DELETE ON Departments
FOR EACH ROW
DECLARE
    CURSOR employee_cursor IS
        SELECT employee_id
        FROM Employees
        WHERE department_id = :OLD.department_id; -- Ajout de la clause WHERE pour sélectionner les employés du département en cours de suppression

    manager_id Employees.manager_id%TYPE; -- Correction de la déclaration de la variable manager_id

BEGIN
    FOR emp_rec IN employee_cursor LOOP
        SELECT manager_id INTO manager_id
        FROM Employees
        WHERE employee_id = emp_rec.employee_id;

        IF manager_id = :OLD.manager_id THEN -- Comparaison avec l'ancien manager_id du département
            RAISE_APPLICATION_ERROR(-20001, 'Le manager du département ne peut pas être supprimé');
        ELSE
            DELETE FROM Employees WHERE manager_id = manager_id; -- Suppression des employés dont le manager est le manager du département
        END IF;
    END LOOP;
END;
