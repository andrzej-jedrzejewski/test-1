CREATE INDEX wwv_mig_accgrpsmbrs_idx2 ON wwv_mig_acc_grpsmembers(project_id,dbid,userid)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";