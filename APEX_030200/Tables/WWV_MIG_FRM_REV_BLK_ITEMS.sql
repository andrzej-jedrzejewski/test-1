CREATE TABLE wwv_mig_frm_rev_blk_items (
  "ID" NUMBER NOT NULL,
  item_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  "LABEL" VARCHAR2(4000 BYTE),
  item_prompt VARCHAR2(4000 BYTE),
  itemtype VARCHAR2(4000 BYTE),
  lovname VARCHAR2(4000 BYTE),
  lov_query CLOB,
  liststyle VARCHAR2(4000 BYTE),
  databaseitem VARCHAR2(4000 BYTE),
  justification VARCHAR2(4000 BYTE),
  "REQUIRED" VARCHAR2(4000 BYTE),
  checkedvalue VARCHAR2(4000 BYTE),
  uncheckedvalue VARCHAR2(4000 BYTE),
  initializevalue VARCHAR2(4000 BYTE),
  formatmask VARCHAR2(4000 BYTE),
  tabpagename VARCHAR2(4000 BYTE),
  columnname VARCHAR2(4000 BYTE),
  multiline VARCHAR2(4000 BYTE),
  maximumlength VARCHAR2(4000 BYTE),
  height VARCHAR2(4000 BYTE),
  width VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_frm_rev_bi_sel CHECK (select_for_app in ('Y', 'N')),
  created_on TIMESTAMP,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_frm_rev_blk_items_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_mig_frm_rev_bi_item_id_fk FOREIGN KEY (item_id) REFERENCES wwv_mig_frm_blk_items ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_frm_rev_bi_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (lov_query) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));