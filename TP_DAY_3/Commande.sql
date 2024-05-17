--2) 
    SELECT instance_name, version, host_name, status FROM v$instance;

INSTANCE_NAME	 VERSION
---------------- -----------------
HOST_NAME							 STATUS
---------------------------------------------------------------- ------------
FREE		 23.0.0.0.0
localhost.localdomain						 OPEN



--3) 
    SELECT name, open_mode FROM v$database;

NAME	  OPEN_MODE
--------- --------------------
FREE	  READ WRITE


--4)  
    SHOW PARAMETER pfile;

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string	 /opt/oracle/product/23ai/dbhom
						 eFree/dbs/spfileFREE.ora

--6) 
    SELECT name FROM v$controlfile;

NAME
--------------------------------------------------------------------------------
/opt/oracle/oradata/FREE/control01.ctl
/opt/oracle/oradata/FREE/control02.ctl

--7) 
    SELECT member FROM v$logfile;

MEMBER
--------------------------------------------------------------------------------
/opt/oracle/oradata/FREE/redo03.log
/opt/oracle/oradata/FREE/redo02.log
/opt/oracle/oradata/FREE/redo01.log

--8)
    SELECT tablespace_name FROM dba_tablespaces;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
