CREATE INDEX wwv_flow_page_cache_idx3 ON wwv_flow_page_cache(chart_region_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";