CREATE INDEX wwv_flow_ws_map_idx2 ON wwv_flow_ws_process_parms_map(process_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";