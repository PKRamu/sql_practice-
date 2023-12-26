insert into prd_util.TUM_TPM_GTIN_MAP_MCLANE 
values('CB','693067','10810031480149','10810031480149','US01','00','1529602034','2022-10-09','9999-12-31','N','HCNGG302','SKNYPOP REESES PPCRN',user,current_timestamp);

create table tdsupport.TUM_TPM_GTIN_MAP_MCLANE_2811bkp as prd_util.TUM_TPM_GTIN_MAP_MCLANE with data and stats;

select * from prd_util.TUM_TPM_GTIN_MAP_MCLANE;
where PRODUCT_CATALOG_ID='693067'

create table tdsupport.TUM_TPM_AHOLD_MAPPING_2811bkp as prd_util.TUM_TPM_AHOLD_MAPPING with data and stats;


insert into prd_util.TUM_TPM_AHOLD_MAPPING 
values
('3400021586','US01','00','3400021579','2022-01-01','9999-12-31','N','HCNGG302','Invalid UPC','00003400021586 - YRK PMT PT TN PB 3.4Z','143416','NA',user,current_timestamp);

sel * from prd_util.TUM_TPM_AHOLD_MAPPING
where material_number='3400021579'
order by last_update_dttm desc;