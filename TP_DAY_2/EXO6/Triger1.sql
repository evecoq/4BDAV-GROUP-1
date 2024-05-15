CREATE OR REPLACE TRIGGER baisse_salaire
BEFORE UPDATE ON employé  
FOR EACH ROW
BEGIN
  IF NEW.salary < OLD.salary THEN
    RAISE APPLICATION_ERROR (-20001, 'Diminution de salaire non autorisée.')
  END IF;
END;
