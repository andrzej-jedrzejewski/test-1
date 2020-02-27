CREATE TABLE wwv_flow_sw_main_keywords (
  "ID" NUMBER NOT NULL,
  keyword VARCHAR2(20 BYTE),
  stmt_class NUMBER(*,0),
  stmt_id NUMBER(*,0),
  isrunnable VARCHAR2(1 BYTE),
  CONSTRAINT wwv_flow_sw_mkeywords_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX"
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";