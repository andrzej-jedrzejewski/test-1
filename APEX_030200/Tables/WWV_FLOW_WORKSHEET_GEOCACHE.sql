CREATE TABLE wwv_flow_worksheet_geocache (
  address VARCHAR2(4000 BYTE),
  geocode VARCHAR2(512 BYTE)
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";