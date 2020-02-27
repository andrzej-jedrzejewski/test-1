CREATE INDEX wwv_mig_frm_revapxap_prjid_idx ON wwv_mig_frm_rev_apex_app(project_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";