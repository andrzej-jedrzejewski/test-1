CREATE INDEX wwv_mig_fmb_menuitem_menuid_ix ON wwv_mig_frm_fmb_menu_menuitem(menu_id)
NOCOMPRESS
PCTFREE 10 INITRANS 2 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX";