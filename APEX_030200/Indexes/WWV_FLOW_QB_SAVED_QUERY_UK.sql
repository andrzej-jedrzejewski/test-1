CREATE UNIQUE INDEX wwv_flow_qb_saved_query_uk ON wwv_flow_qb_saved_query(title,created_by,security_group_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";