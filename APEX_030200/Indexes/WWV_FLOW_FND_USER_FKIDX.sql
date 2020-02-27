CREATE UNIQUE INDEX wwv_flow_fnd_user_fkidx ON wwv_flow_fnd_user(security_group_id,user_name)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";