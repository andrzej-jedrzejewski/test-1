CREATE TABLE wwv_flow_alternate_config (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  flow_id NUMBER,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  config_comments VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_alt_cong_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_alt_cfg_fk FOREIGN KEY (flow_id) REFERENCES wwv_flows ("ID") ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";