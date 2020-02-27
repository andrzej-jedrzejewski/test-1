CREATE TABLE bitmap_src_a (
  col1 NUMBER NOT NULL,
  col2 NUMBER,
  PRIMARY KEY (col1) USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSTEM"
) NOCOMPRESS
PCTFREE 10 PCTUSED 40 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSTEM";