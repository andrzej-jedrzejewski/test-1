CREATE INDEX wwv_mig_acc_rpt_mdl_idx2 ON wwv_mig_acc_rpts_modules(project_id,dbid,reportid)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";