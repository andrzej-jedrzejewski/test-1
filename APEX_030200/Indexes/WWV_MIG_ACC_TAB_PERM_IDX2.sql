CREATE INDEX wwv_mig_acc_tab_perm_idx2 ON wwv_mig_acc_tab_perm(project_id,dbid,tblid)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";