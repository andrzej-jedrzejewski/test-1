CREATE INDEX wwv_mig_olb_t_block_oltid_idx ON wwv_mig_olb_olt_block(objectlibrarytab_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";