CREATE TABLE wwv_flow_upg_tab_obsolete (
  table_name VARCHAR2(30 BYTE) NOT NULL,
  obsolete_date DATE NOT NULL,
  change_made VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_upg_tab_obs_done CHECK (change_made in ('Y','N')),
  CONSTRAINT wwv_flow_upg_tab_obs_pk PRIMARY KEY (table_name) USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX"
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";