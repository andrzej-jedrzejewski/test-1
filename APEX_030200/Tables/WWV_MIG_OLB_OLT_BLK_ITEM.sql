CREATE TABLE wwv_mig_olb_olt_blk_item (
  "ID" NUMBER NOT NULL,
  block_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  item_comment CLOB,
  "LABEL" VARCHAR2(4000 BYTE),
  item_prompt VARCHAR2(4000 BYTE),
  itemtype VARCHAR2(4000 BYTE),
  lovname VARCHAR2(4000 BYTE),
  liststyle VARCHAR2(4000 BYTE),
  databaseitem VARCHAR2(4000 BYTE),
  justification VARCHAR2(4000 BYTE),
  "REQUIRED" VARCHAR2(4000 BYTE),
  treeallowempbranch VARCHAR2(4000 BYTE),
  checkedvalue VARCHAR2(4000 BYTE),
  uncheckedvalue VARCHAR2(4000 BYTE),
  initializevalue VARCHAR2(4000 BYTE),
  formatmask VARCHAR2(4000 BYTE),
  tabpagename VARCHAR2(4000 BYTE),
  columnname VARCHAR2(4000 BYTE),
  multiline VARCHAR2(4000 BYTE),
  maximumlength VARCHAR2(4000 BYTE),
  bevel VARCHAR2(4000 BYTE),
  backcolor VARCHAR2(4000 BYTE),
  foregroundcolor VARCHAR2(4000 BYTE),
  fontname VARCHAR2(4000 BYTE),
  fontstyle VARCHAR2(4000 BYTE),
  fontsize VARCHAR2(4000 BYTE),
  fontweight VARCHAR2(4000 BYTE),
  fontspacing VARCHAR2(4000 BYTE),
  height VARCHAR2(4000 BYTE),
  width VARCHAR2(4000 BYTE),
  xposition VARCHAR2(4000 BYTE),
  yposition VARCHAR2(4000 BYTE),
  fillpattern VARCHAR2(4000 BYTE),
  mousenavigate VARCHAR2(4000 BYTE),
  keyboardnavigable VARCHAR2(4000 BYTE),
  nextnavigationitemname VARCHAR2(4000 BYTE),
  showhorizontalscrollbar VARCHAR2(4000 BYTE),
  showverticalscrollbar VARCHAR2(4000 BYTE),
  compressionquality VARCHAR2(4000 BYTE),
  canvasname VARCHAR2(4000 BYTE),
  dirtyinfo VARCHAR2(4000 BYTE),
  autohint VARCHAR2(4000 BYTE),
  caserestriction VARCHAR2(4000 BYTE),
  checkboxothervalues VARCHAR2(4000 BYTE),
  concealdata VARCHAR2(4000 BYTE),
  datatype VARCHAR2(4000 BYTE),
  distancebetweenrecords VARCHAR2(4000 BYTE),
  enabled VARCHAR2(4000 BYTE),
  hint VARCHAR2(4000 BYTE),
  insertallowed VARCHAR2(4000 BYTE),
  itemsdisplay VARCHAR2(4000 BYTE),
  lockrecord VARCHAR2(4000 BYTE),
  queryallowed VARCHAR2(4000 BYTE),
  querylength VARCHAR2(4000 BYTE),
  rendered VARCHAR2(4000 BYTE),
  updateallowed VARCHAR2(4000 BYTE),
  validatefromlist VARCHAR2(4000 BYTE),
  "VISIBLE" VARCHAR2(4000 BYTE),
  visualattributename VARCHAR2(4000 BYTE),
  editname VARCHAR2(4000 BYTE),
  iconfilename VARCHAR2(4000 BYTE),
  iconic VARCHAR2(4000 BYTE),
  parenttype VARCHAR2(4000 BYTE),
  parentname VARCHAR2(4000 BYTE),
  parentmodule VARCHAR2(4000 BYTE),
  parentmoduletype VARCHAR2(4000 BYTE),
  displayquality VARCHAR2(4000 BYTE),
  primarykey VARCHAR2(4000 BYTE),
  othervalues VARCHAR2(4000 BYTE),
  wrapstyle VARCHAR2(4000 BYTE),
  fixedlength VARCHAR2(4000 BYTE),
  editxposition VARCHAR2(4000 BYTE),
  edityposition VARCHAR2(4000 BYTE),
  updateifnull VARCHAR2(4000 BYTE),
  lovxposition VARCHAR2(4000 BYTE),
  lovyposition VARCHAR2(4000 BYTE),
  sizingstyle VARCHAR2(4000 BYTE),
  caseinsensitivequery VARCHAR2(4000 BYTE),
  keepcursorposition VARCHAR2(4000 BYTE),
  autoskip VARCHAR2(4000 BYTE),
  listelementcount VARCHAR2(4000 BYTE),
  defaultbutton VARCHAR2(4000 BYTE),
  recordvisualattributegroupname VARCHAR2(4000 BYTE),
  synchronizeditemname VARCHAR2(4000 BYTE),
  promptfontsize VARCHAR2(4000 BYTE),
  promptfontname VARCHAR2(4000 BYTE),
  promptfontspacing VARCHAR2(4000 BYTE),
  promptfontweight VARCHAR2(4000 BYTE),
  promptfontstyle VARCHAR2(4000 BYTE),
  promptalign VARCHAR2(4000 BYTE),
  promptalignoffset VARCHAR2(4000 BYTE),
  promptattachmentoffset VARCHAR2(4000 BYTE),
  promptattachmentedge VARCHAR2(4000 BYTE),
  promptjustification VARCHAR2(4000 BYTE),
  promptforegroundcolor VARCHAR2(4000 BYTE),
  lowestallowedvalue VARCHAR2(4000 BYTE),
  highestallowedvalue VARCHAR2(4000 BYTE),
  copyvaluefromitem VARCHAR2(4000 BYTE),
  promptdisplaystyle VARCHAR2(4000 BYTE),
  languagedirection VARCHAR2(4000 BYTE),
  readingorder VARCHAR2(4000 BYTE),
  summaryitemname VARCHAR2(4000 BYTE),
  accesskey VARCHAR2(4000 BYTE),
  audiochannels VARCHAR2(4000 BYTE),
  calculatemode VARCHAR2(4000 BYTE),
  commmode VARCHAR2(4000 BYTE),
  item_compress VARCHAR2(4000 BYTE),
  datalengthsemantics VARCHAR2(4000 BYTE),
  datasourceblock VARCHAR2(4000 BYTE),
  datasourcexaxis VARCHAR2(4000 BYTE),
  datasourceyaxis VARCHAR2(4000 BYTE),
  executemode VARCHAR2(4000 BYTE),
  filename VARCHAR2(4000 BYTE),
  formula VARCHAR2(4000 BYTE),
  helpbooktopic VARCHAR2(4000 BYTE),
  imagedepth VARCHAR2(4000 BYTE),
  imageformat VARCHAR2(4000 BYTE),
  implementationclass VARCHAR2(4000 BYTE),
  initializekeyboarddirection VARCHAR2(4000 BYTE),
  keyboardstate VARCHAR2(4000 BYTE),
  oleactionstyle VARCHAR2(4000 BYTE),
  oleclass VARCHAR2(4000 BYTE),
  oleinplaceaction VARCHAR2(4000 BYTE),
  oleinsideoutsupport VARCHAR2(4000 BYTE),
  olepopupmenuitems VARCHAR2(4000 BYTE),
  oleresizstyle VARCHAR2(4000 BYTE),
  oleshowpopupmenu VARCHAR2(4000 BYTE),
  oleshowtenanttypetype VARCHAR2(4000 BYTE),
  oletenanttypeaspect VARCHAR2(4000 BYTE),
  oletenanttypetype VARCHAR2(4000 BYTE),
  parentfilename VARCHAR2(4000 BYTE),
  parentfilepath VARCHAR2(4000 BYTE),
  parentsourcelevel1objectname VARCHAR2(4000 BYTE),
  parentsourcelevel1objecttype VARCHAR2(4000 BYTE),
  persistentclientinfolength VARCHAR2(4000 BYTE),
  popupmenuname VARCHAR2(4000 BYTE),
  previousnavigationitemname VARCHAR2(4000 BYTE),
  promptbackcolor VARCHAR2(4000 BYTE),
  promptfillpattern VARCHAR2(4000 BYTE),
  promptreadingorder VARCHAR2(4000 BYTE),
  promptvisualattributename VARCHAR2(4000 BYTE),
  queryname VARCHAR2(4000 BYTE),
  queryonly VARCHAR2(4000 BYTE),
  recordgroupname VARCHAR2(4000 BYTE),
  showfastforward VARCHAR2(4000 BYTE),
  showplay VARCHAR2(4000 BYTE),
  showrecord VARCHAR2(4000 BYTE),
  showrewind VARCHAR2(4000 BYTE),
  showslider VARCHAR2(4000 BYTE),
  showtime VARCHAR2(4000 BYTE),
  showvolume VARCHAR2(4000 BYTE),
  smartclass VARCHAR2(4000 BYTE),
  soundformat VARCHAR2(4000 BYTE),
  soundquality VARCHAR2(4000 BYTE),
  subclasssubobject VARCHAR2(4000 BYTE),
  summaryblockname VARCHAR2(4000 BYTE),
  summaryfunction VARCHAR2(4000 BYTE),
  tooltip VARCHAR2(4000 BYTE),
  tooltipvisualattributegroup VARCHAR2(4000 BYTE),
  treedataquery VARCHAR2(4000 BYTE),
  treemultiselect VARCHAR2(4000 BYTE),
  treeshowlines VARCHAR2(4000 BYTE),
  treeshowsymbol VARCHAR2(4000 BYTE),
  updatecommit VARCHAR2(4000 BYTE),
  updatequery VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_olb_olt_bi_sel_for_app CHECK (select_for_app in ('Y', 'N')),
  applicable VARCHAR2(1 BYTE) DEFAULT 'Y',
  "COMPLETE" VARCHAR2(1 BYTE) DEFAULT 'N',
  "PRIORITY" NUMBER(1) DEFAULT 3,
  assignee VARCHAR2(255 BYTE),
  notes VARCHAR2(4000 BYTE),
  tags VARCHAR2(4000 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_olb_olt_blk_item_pk PRIMARY KEY ("ID") USING INDEX NOCOMPRESS
    PCTFREE 10 INITRANS 2 LOGGING
    STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
    TABLESPACE "SYSAUX",
  CONSTRAINT wwv_mig_olb_olt_bi_blk_id_fk FOREIGN KEY (block_id) REFERENCES wwv_mig_olb_olt_block ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_olb_olt_bi_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
) NOCOMPRESS
PCTFREE 10 INITRANS 1 LOGGING
STORAGE(FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
TABLESPACE "SYSAUX"
LOB (item_comment) STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT));