SELECT count(*) FROM PRD_DW_INT_DBASE.COPA_XCTN_SUMM WHERE Accounting_Period_YearMonth_Id >=2023011; ---22,383,311
SELECT count(*) FROM PRD_DW_INT_DBASE.TFCT_FINANCE_PNL WHERE Accounting_Period_YearMonth_Id >=2023011;---21,538,815
sel count(*) from prd_dw_int_dbase.INT_AZCPA_COPA6ACT_HISTORY  where FISCPER>=2023011;---3,142,153
SELECT count(*) FROM PRD_DW_INT_DBASE.COPA_XCTN_SUMM_I WHERE Accounting_Period_YearMonth_Id >=2023011;--2,100,063
SELECT count(*) FROM PRD_DW_INT_DBASE.TFCT_FINANCE_PNL_I WHERE Accounting_Period_YearMonth_Id >=2023011;--1,666,276


sel * from  prd_util.tpc_execution_control_request
where exec_group like '%campaign_cust%'


sel count(*) from PRD_DW_BACKUP.COPA_XCTN_SUMM_RITM0160355 WHERE Accounting_Period_YearMonth_Id >=2023011; ---22,383,311

sel count(*) from PRD_DW_BACKUP.TFCT_FINANCE_PNL_RITM0160355 WHERE Accounting_Period_YearMonth_Id >=2023011;--21,538,815

sel count(*) from prd_dw_backup.INT_AZCPA_COPA6ACT_HISTORY_RITM0160355 where FISCPER>=2023011;--3,142,153

sel count(*) from PRD_DW_BACKUP.COPA_XCTN_SUMM_I_RITM0160355 WHERE Accounting_Period_YearMonth_Id >=2023011;--2,100,063

sel count(*) from PRD_DW_BACKUP.TFCT_FINANCE_PNL_I_RITM0160355  WHERE Accounting_Period_YearMonth_Id >=2023011;---1,666,276


sel zcust_h5 , customer,wbs_elemt,zder_sea,fiscper,
sum(G_AVVCPR ), SUM(G_AVVTRS), SUM(G_AVVPMD), SUM(G_AVVFSI),
SUM(ZG_AVVPPB), SUM(G_AVVADR), SUM(G_AVVADA), SUM(G_AVVEMC),
SUM(G_AVVEMN), SUM(G_AVVFRB), SUM(G_AVVVAC), SUM(G_AVVTAA),
SUM(G_AVVMRD),SUM(G_AVVSMD),SUM(G_AVVPKG),SUM(G_AVVMKT),
SUM(G_AVVEVF),SUM(G_AVVSRH),SUM(G_AVVFWR),SUM(G_AVVMDB),
SUM(G_AVVCEF) ,SUM( G_AVVCIN),SUM(G_AVVPKD),SUM(G_AVVPOS),
SUM(G_AVVMKS), SUM(G_AVVOCP)
from
prd_dw_int_dbase.INT_AZCPA_COPA6ACT_HISTORY where curtype='B0' and fiscper in (2023011)
and wbs_elemt<>'' and zder_Sea='WBS' and customer<>'' group by 1,2,3,4,5;
