CREATE TABLE wwv_flow_icon_bar_attributes (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  icon_bar_text VARCHAR2(255 BYTE),
  icon_bar_table_width VARCHAR2(30 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_iconbarattr_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_iconbarattr_fk FOREIGN KEY (flow_id) REFERENCES wwv_flows ("ID") ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";