drop table if exists tmp.row_col_test;
create table tmp.row_col_test (
	stuid string,
	day string,
	point DOUBLE
)
row format delimited fields terminated by ' ';
LOAD DATA LOCAL INPATH '/tmp/test_data/row_col.txt' OVERWRITE INTO TABLE tmp.row_col_test;



select stuid, point, explode(day) as date_is from tmp.row_col_test;

select stuid, point from tmp.row_col_test lateral view explode(collect_set(day)) day as day;




select t3.stuid, t3.point from (

select t1.stuid as stuid, t1.point as point, t2.day as day from (
  	select * from tmp.row_col_test
) as t1
left join (

select stuid as stuid , collect_set(day) as day from tmp.row_col_test
group by stuid

) as t2
on t2.stuid = t1.stuid


) t3
lateral view explode(t3.day) t3.day as t3.day;

select t1.stuid, t1.point, day from (
select stuid as stuid, point as point, collect_set(day) as day from tmp.row_col_test group by stuid, point
) as t1
lateral view explode(t1.day) t1.day as day;



select col1, col2, value 
     from orig_table lateral view explode(t1.day) day as day;

select t1.info as info, day_is from (
select concat(stuid, "@", point) as info , collect_set(day) as day from tmp.row_col_test group by stuid, point
) as t1
lateral view explode(t1.day) days as day_is;
