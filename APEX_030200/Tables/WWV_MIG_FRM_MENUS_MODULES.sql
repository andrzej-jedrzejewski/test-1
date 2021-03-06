CREATE TABLE wwv_mig_frm_menus_modules (
  "ID" NUMBER NOT NULL,
  file_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "VERSION" VARCHAR2(255 BYTE),
  xmlns VARCHAR2(255 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_mnu_mdl_select_for_app CHECK (select_for_app in ('Y', 'N')),
  applicable VARCHAR2(1 BYTE) DEFAULT 'Y',
  "COMPLETE" VARCHAR2(1 BYTE) DEFAULT 'N',
  "PRIORITY" NUMBER(1) DEFAULT 3,
  assignee VARCHAR2(255 BYTE),
  notes VARCHAR2(4000 BYTE),
  tags VARCHAR2(4000 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_mnu_modules_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_mig_mnu_modules_file_id_fk FOREIGN KEY (file_id) REFERENCES wwv_mig_frm_menus ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_mnu_modules_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";