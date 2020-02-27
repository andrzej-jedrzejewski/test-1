CREATE UNIQUE INDEX wwv_flow_ws_unq_alias_idx ON wwv_flow_worksheets(CASE  WHEN "ALIAS" IS NOT NULL THEN "FLOW_ID" END,"ALIAS")
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";