CREATE INDEX wwv_mig_frm_blk_rel_sg_id_idx ON wwv_mig_frm_blk_relations(security_group_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";