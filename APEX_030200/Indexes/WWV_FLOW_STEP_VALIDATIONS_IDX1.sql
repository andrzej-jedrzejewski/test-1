CREATE INDEX wwv_flow_step_validations_idx1 ON wwv_flow_step_validations(flow_step_id,flow_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";