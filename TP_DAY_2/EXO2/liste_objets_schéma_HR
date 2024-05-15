DECLARE
    v_object_name VARCHAR2(100);
    v_object_type VARCHAR2(100);
BEGIN
    FOR obj IN (SELECT object_name, object_type FROM all_objects WHERE object_name IN ('REGIONS', 'COUNTRIES', 'LOCATIONS', 'DEPARTMENTS', 'JOBS', 'EMPLOYEES', 'JOB_HISTORY', 'EMP_DETAILS_VIEW') AND object_type IN ('TABLE', 'VIEW') AND owner = 'HR') LOOP
        v_object_name := obj.object_name;
        v_object_type := obj.object_type;
        DBMS_OUTPUT.PUT_LINE('L''objet ' || v_object_name || ' est de type ' || v_object_type || '.');
    END LOOP;
END;
/