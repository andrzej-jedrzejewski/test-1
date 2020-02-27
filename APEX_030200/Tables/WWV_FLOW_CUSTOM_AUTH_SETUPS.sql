CREATE TABLE wwv_flow_custom_auth_setups (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  reference_id NUMBER,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  description VARCHAR2(4000 BYTE),
  page_sentry_function CLOB,
  sess_verify_function CLOB,
  invalid_session_page NUMBER,
  invalid_session_url VARCHAR2(4000 BYTE),
  pre_auth_process CLOB,
  auth_function CLOB,
  post_auth_process CLOB,
  cookie_name VARCHAR2(4000 BYTE),
  cookie_path VARCHAR2(4000 BYTE),
  cookie_domain VARCHAR2(4000 BYTE),
  use_secure_cookie_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_custom_auth_chk1 CHECK (USE_SECURE_COOKIE_YN in ('Y','N')),
  ldap_host VARCHAR2(255 BYTE),
  ldap_port VARCHAR2(255 BYTE),
  ldap_string VARCHAR2(255 BYTE),
  attribute_01 VARCHAR2(4000 BYTE),
  attribute_02 VARCHAR2(4000 BYTE),
  attribute_03 VARCHAR2(4000 BYTE),
  attribute_04 VARCHAR2(4000 BYTE),
  attribute_05 VARCHAR2(4000 BYTE),
  attribute_06 VARCHAR2(4000 BYTE),
  attribute_07 VARCHAR2(4000 BYTE),
  attribute_08 VARCHAR2(4000 BYTE),
  required_patch NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_auth_setups_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_auth_setups_fk FOREIGN KEY (flow_id) REFERENCES wwv_flows ("ID") ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (auth_function) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  CACHE READS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT))
LOB (page_sentry_function) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  CACHE READS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT))
LOB (post_auth_process) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  CACHE READS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT))
LOB (pre_auth_process) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  CACHE READS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT))
LOB (sess_verify_function) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  CACHE READS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));