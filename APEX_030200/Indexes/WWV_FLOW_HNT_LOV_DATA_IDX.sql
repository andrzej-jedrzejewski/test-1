CREATE INDEX wwv_flow_hnt_lov_data_idx ON wwv_flow_hnt_lov_data(column_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";