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

--9) 
    SELECT file_name, blocks from dba_data_files;

FILE_NAME
--------------------------------------------------------------------------------
    BLOCKS
----------
/opt/oracle/oradata/FREE/FREEPDB1/sysaux01.dbf
     96000

/opt/oracle/oradata/FREE/FREEPDB1/users01.dbf
     60640

/opt/oracle/oradata/FREE/FREEPDB1/system01.dbf
     53760


FILE_NAME
--------------------------------------------------------------------------------
    BLOCKS
----------
/opt/oracle/oradata/FREE/FREEPDB1/undotbs01.dbf
     25600


--10)
     SELECT tablespace_name, file_name FROM dba_data_files;

TABLESPACE_NAME
------------------------------
FILE_NAME
--------------------------------------------------------------------------------
SYSAUX
/opt/oracle/oradata/FREE/FREEPDB1/sysaux01.dbf

USERS
/opt/oracle/oradata/FREE/FREEPDB1/users01.dbf

SYSTEM
/opt/oracle/oradata/FREE/FREEPDB1/system01.dbf


TABLESPACE_NAME
------------------------------
FILE_NAME
--------------------------------------------------------------------------------
UNDOTBS1
/opt/oracle/oradata/FREE/FREEPDB1/undotbs01.dbf

--11)
     CREATE TABLESPACE mon_espace DATAFILE '/opt/oracle/oradata/FREE/FREEPDB1/mon_espace.dbf' SIZE 10M DEFAULT STORAGE (INITIAL 128K NEXT 64K MINEXTENTS 1 MAXEXTENTS 5);

Tablespace created.

     SELECT tablespace_name, file_name, bytes, autoextensible FROM dba_data_files WHERE tablespace_name = 'MON_ESPACE';

TABLESPACE_NAME
------------------------------
FILE_NAME
--------------------------------------------------------------------------------
     BYTES AUT
---------- ---
MON_ESPACE
/opt/oracle/oradata/FREE/FREEPDB1/mon_espace.dbf
  10485760 NO

--12)
     CREATE TEMPORARY TABLESPACE mon_temp TEMPFILE '/opt/oracle/oradata/FREE/FREEPDB1/mon_temp.dbf' SIZE 2M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 1M;

Tablespace created.

--13)
     SELECT tablespace_name, file_name, bytes, autoextensible FROM dba_temp_files WHERE tablespace_name = 'MON_TEMP';

TABLESPACE_NAME
------------------------------
FILE_NAME
--------------------------------------------------------------------------------
     BYTES AUT
---------- ---
MON_TEMP
/opt/oracle/oradata/FREE/FREEPDB1/mon_temp.dbf
   2097152 NO

--14)
     exit
Disconnected from Oracle Database 23ai Free Release 23.0.0.0.0 - Develop, Learn, and Run for Free
Version 23.4.0.24.05
[oracle@localhost ~]$

     SELECT tablespace_name, status, contents, bigfile FROM dba_tablespaces;

TABLESPACE_NAME 	       STATUS	 CONTENTS	       BIG
------------------------------ --------- --------------------- ---
SYSTEM			       ONLINE	 PERMANENT	       YES
SYSAUX			       ONLINE	 PERMANENT	       YES
UNDOTBS1		       ONLINE	 UNDO		       YES
TEMP			       ONLINE	 TEMPORARY	       NO
USERS			       ONLINE	 PERMANENT	       NO
MON_ESPACE		       ONLINE	 PERMANENT	       YES
MON_TEMP		       ONLINE	 TEMPORARY	       YES

7 rows selected.

--15)
     DROP TABLESPACE mon_espace INCLUDING CONTENTS AND DATAFILES;

Tablespace dropped.

SQL> DROP TABLESPACE mon_temp INCLUDING CONTENTS AND DATAFILES;

Tablespace dropped.

