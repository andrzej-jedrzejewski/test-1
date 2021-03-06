CREATE TABLE wwv_flow_preferences$ (
  "ID" NUMBER NOT NULL,
  user_id VARCHAR2(255 BYTE) NOT NULL,
  preference_name VARCHAR2(255 BYTE) NOT NULL,
  attribute_value VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_prefs_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_prefs_fk FOREIGN KEY (security_group_id) REFERENCES wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(INITIAL 16384 NEXT 106496
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";