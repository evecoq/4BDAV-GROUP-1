CREATE OR REPLACE TRIGGER manager
AFTER DELETE ON employé
FOR EACH ROW
BEGIN
  IF OLD.manager = TRUE THEN
    UPDATE departments
    SET manager_id = NULL
    WHERE department_id = OLD.department_id;

   
  END IF;
END;