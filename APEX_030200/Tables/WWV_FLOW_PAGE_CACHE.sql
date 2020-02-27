CREATE TABLE wwv_flow_page_cache (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER,
  page_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  language VARCHAR2(255 BYTE),
  user_name VARCHAR2(255 BYTE),
  context1 VARCHAR2(255 BYTE),
  context2 VARCHAR2(4000 BYTE),
  page_text CLOB,
  request VARCHAR2(4000 BYTE),
  chart_region_id NUMBER,
  region_id NUMBER,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  cached_on DATE,
  cached_by VARCHAR2(255 BYTE),
  valid_util DATE,
  CONSTRAINT wwv_flow_page_cache_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_page_cache_fk FOREIGN KEY (flow_id) REFERENCES wwv_flows ("ID") ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (page_text) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  CACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));