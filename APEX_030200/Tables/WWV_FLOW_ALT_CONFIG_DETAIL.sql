CREATE TABLE wwv_flow_alt_config_detail (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  config NUMBER,
  table_dot_column VARCHAR2(255 BYTE) NOT NULL,
  id_column_value NUMBER NOT NULL,
  new_value VARCHAR2(4000 BYTE) NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  config_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_alt_conf_det_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_alt_cfg_d_fk FOREIGN KEY (config) REFERENCES wwv_flow_alternate_config ("ID") ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";