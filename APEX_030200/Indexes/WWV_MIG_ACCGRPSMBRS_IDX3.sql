CREATE INDEX wwv_mig_accgrpsmbrs_idx3 ON wwv_mig_acc_grpsmembers(project_id,dbid,groupid)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";