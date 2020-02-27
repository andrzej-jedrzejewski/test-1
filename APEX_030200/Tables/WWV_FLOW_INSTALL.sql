CREATE TABLE wwv_flow_install (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  include_in_export_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_in_export CHECK (include_in_export_yn in ('Y','N')),
  welcome_message VARCHAR2(4000 BYTE),
  license_message VARCHAR2(4000 BYTE),
  configuration_message VARCHAR2(4000 BYTE),
  build_options_message VARCHAR2(4000 BYTE),
  validation_message VARCHAR2(4000 BYTE),
  install_message VARCHAR2(4000 BYTE),
  install_success_message VARCHAR2(4000 BYTE),
  install_failure_message VARCHAR2(4000 BYTE),
  get_version_sql_query VARCHAR2(4000 BYTE),
  upgrade_message VARCHAR2(4000 BYTE),
  upgrade_confirm_message VARCHAR2(4000 BYTE),
  upgrade_success_message VARCHAR2(4000 BYTE),
  upgrade_failure_message VARCHAR2(4000 BYTE),
  deinstall_message VARCHAR2(4000 BYTE),
  deinstall_success_message VARCHAR2(4000 BYTE),
  deinstall_failure_message VARCHAR2(4000 BYTE),
  deinstall_script CLOB,
  prompt_substitution_01_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_01 CHECK (prompt_substitution_01_yn in ('Y','N')),
  prompt_substitution_02_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_02 CHECK (prompt_substitution_02_yn in ('Y','N')),
  prompt_substitution_03_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_03 CHECK (prompt_substitution_03_yn in ('Y','N')),
  prompt_substitution_04_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_04 CHECK (prompt_substitution_04_yn in ('Y','N')),
  prompt_substitution_05_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_05 CHECK (prompt_substitution_05_yn in ('Y','N')),
  prompt_substitution_06_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_06 CHECK (prompt_substitution_06_yn in ('Y','N')),
  prompt_substitution_07_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_07 CHECK (prompt_substitution_07_yn in ('Y','N')),
  prompt_substitution_08_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_08 CHECK (prompt_substitution_08_yn in ('Y','N')),
  prompt_substitution_09_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_09 CHECK (prompt_substitution_09_yn in ('Y','N')),
  prompt_substitution_10_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_10 CHECK (prompt_substitution_10_yn in ('Y','N')),
  prompt_substitution_11_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_11 CHECK (prompt_substitution_11_yn in ('Y','N')),
  prompt_substitution_12_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_12 CHECK (prompt_substitution_12_yn in ('Y','N')),
  prompt_substitution_13_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_13 CHECK (prompt_substitution_13_yn in ('Y','N')),
  prompt_substitution_14_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_14 CHECK (prompt_substitution_14_yn in ('Y','N')),
  prompt_substitution_15_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_15 CHECK (prompt_substitution_15_yn in ('Y','N')),
  prompt_substitution_16_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_16 CHECK (prompt_substitution_16_yn in ('Y','N')),
  prompt_substitution_17_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_17 CHECK (prompt_substitution_17_yn in ('Y','N')),
  prompt_substitution_18_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_18 CHECK (prompt_substitution_18_yn in ('Y','N')),
  prompt_substitution_19_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_19 CHECK (prompt_substitution_19_yn in ('Y','N')),
  prompt_substitution_20_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_install_sub_20 CHECK (prompt_substitution_20_yn in ('Y','N')),
  install_prompt_01 VARCHAR2(255 BYTE),
  install_prompt_02 VARCHAR2(255 BYTE),
  install_prompt_03 VARCHAR2(255 BYTE),
  install_prompt_04 VARCHAR2(255 BYTE),
  install_prompt_05 VARCHAR2(255 BYTE),
  install_prompt_06 VARCHAR2(255 BYTE),
  install_prompt_07 VARCHAR2(255 BYTE),
  install_prompt_08 VARCHAR2(255 BYTE),
  install_prompt_09 VARCHAR2(255 BYTE),
  install_prompt_10 VARCHAR2(255 BYTE),
  install_prompt_11 VARCHAR2(255 BYTE),
  install_prompt_12 VARCHAR2(255 BYTE),
  install_prompt_13 VARCHAR2(255 BYTE),
  install_prompt_14 VARCHAR2(255 BYTE),
  install_prompt_15 VARCHAR2(255 BYTE),
  install_prompt_16 VARCHAR2(255 BYTE),
  install_prompt_17 VARCHAR2(255 BYTE),
  install_prompt_18 VARCHAR2(255 BYTE),
  install_prompt_19 VARCHAR2(255 BYTE),
  install_prompt_20 VARCHAR2(255 BYTE),
  prompt_if_mult_auth_yn VARCHAR2(1 BYTE) CONSTRAINT wwv_auth_prompt CHECK (prompt_if_mult_auth_yn in ('Y','N')),
  trigger_install_when_cond VARCHAR2(255 BYTE),
  trigger_install_when_exp1 VARCHAR2(4000 BYTE),
  trigger_install_when_exp2 VARCHAR2(4000 BYTE),
  trigger_failure_message VARCHAR2(4000 BYTE),
  required_free_kb NUMBER,
  required_sys_privs VARCHAR2(4000 BYTE),
  required_names_available VARCHAR2(4000 BYTE),
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  created_by VARCHAR2(255 BYTE),
  created_on DATE,
  CONSTRAINT wwv_flow_install_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_flow_install_fk FOREIGN KEY (flow_id) REFERENCES wwv_flows ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_install_fk2 FOREIGN KEY (security_group_id) REFERENCES wwv_flow_companies (provisioning_company_id)
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (deinstall_script) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));