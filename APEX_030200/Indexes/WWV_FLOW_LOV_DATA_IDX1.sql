CREATE UNIQUE INDEX wwv_flow_lov_data_idx1 ON wwv_flow_list_of_values_data(lov_id,security_group_id,lov_disp_sequence,"ID")
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";