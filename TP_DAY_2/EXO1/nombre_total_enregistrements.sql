DECLARE
    A ALL_TABLES.TABLE_NAME%TYPE;
    v_count NUMBER;
    v_sql VARCHAR2(1000);
    CURSOR tables_name_cursor IS
        SELECT TABLE_NAME FROM ALL_TABLES WHERE OWNER = 'HR';
BEGIN
    OPEN tables_name_cursor;

    LOOP
        FETCH tables_name_cursor INTO A;
        EXIT WHEN tables_name_cursor%NOTFOUND;
        v_sql := 'SELECT COUNT(*) FROM HR.' || A;
        EXECUTE IMMEDIATE v_sql INTO v_count;
        DBMS_OUTPUT.PUT_LINE('Nombre d''enregistrements dans la table ' || A || ' : ' || v_count);
    END LOOP;

    CLOSE tables_name_cursor;
END;