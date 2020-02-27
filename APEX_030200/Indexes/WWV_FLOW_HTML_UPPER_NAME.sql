CREATE INDEX wwv_flow_html_upper_name ON wwv_flow_html_repository(upper_html_name)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";