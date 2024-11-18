select * from data_src ds where journal = 'Food Chemistry';

select * from nutr_def nd where nutrdesc = 'Retinol';

select * from food_des where manufacname = 'Kellog, Co.';

select count(*) from data_src ds where year > 2000;

select count(*) from food_des fd where fat_factor < 4;

select * from weight w where gm_wgt = 190;

select count(*) from food_des where pro_factor > 1.5 and fat_factor < 5; 

select * from data_src where year = 1990 and journal = 'Cereal Foods World';

select count(*) from weight where gm_wgt > 150 and gm_wgt < 200;

select * from nutr_def where units in ('kj', 'kcal');

select * from data_src ds where year = 2000 and journal = 'Food Chemistry';

select count(*) from food_des fd where fdgrp_cd not in ('0800');

select 
	datasrc_id, 
	year, 
	journal 
from 
	data_src ds 
where 
	year between 1990 and 2000 
and 
	journal in ('J. Food Protection', 'Food Chemistry');

select count(*) from weight w where gm_wgt between 50 and 75;

select * from data_src ds where ds.year in (1960,1970,1980,1990,2000) order by year;


