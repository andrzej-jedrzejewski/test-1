CREATE TABLE wwv_flow_jobs (
  "ID" NUMBER,
  "JOB" NUMBER NOT NULL,
  flow_id NUMBER,
  security_group_id NUMBER NOT NULL,
  "OWNER" VARCHAR2(30 BYTE),
  enduser VARCHAR2(255 BYTE),
  created DATE,
  modified DATE,
  completed DATE,
  status VARCHAR2(100 BYTE),
  system_status VARCHAR2(4000 BYTE),
  system_modified DATE,
  what CLOB NOT NULL,
  CONSTRAINT wwv_flow_jobs_pk PRIMARY KEY ("JOB") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX"
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (what) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));