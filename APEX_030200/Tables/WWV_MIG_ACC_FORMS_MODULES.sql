CREATE TABLE wwv_mig_acc_forms_modules (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  moduleid NUMBER(11) NOT NULL,
  formid NUMBER(11),
  modulename VARCHAR2(1000 BYTE),
  countofdeclarationlines NUMBER(11),
  countoflines NUMBER(11),
  lines CLOB,
  moduletype NUMBER(11),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_frm_mdl_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_mig_acc_frm_mdl_fk FOREIGN KEY (project_id,dbid,formid) REFERENCES wwv_mig_acc_forms (project_id,dbid,formid) ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (lines) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));