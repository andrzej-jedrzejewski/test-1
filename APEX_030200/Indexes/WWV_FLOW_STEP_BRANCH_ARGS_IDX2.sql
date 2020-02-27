CREATE INDEX wwv_flow_step_branch_args_idx2 ON wwv_flow_step_branch_args(flow_step_branch_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";