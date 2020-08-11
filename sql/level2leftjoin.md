用hive实现cities省市区三级联

原始数据：

```
id,name,parentid
1,北京市,0
2,山东省,0
3,昌平区,1
4,海淀区,1
5,沙河镇,3
6,马池口镇,3
7,中关村,4
8,上地,4
9,烟台市,2
10,青岛市,2
11,牟平区,9
12,芝罘区,9
13,即墨区,10
14,城阳,10
```

产出表头：

```
一级地名,二级地名,三级地名
```

建表：

```sql
drop table if exists xingze.regiontest; 
create table if not exists xingze.regiontest(
  id int,
  name string,
  parentid int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/home/master/xingze/data/regiontest.csv' INTO TABLE xingze.regiontest;
select * from xingze.regiontest;
```

执行逻辑：

```sql
select 
	t3.name as level1
	,t2.name as level2
	,t1.name as level3
from (
	select id as id,name as name,parentid as parentid from xingze.regiontest
) as t1
left join (
	select id as id,name as name,parentid as parentid from xingze.regiontest
) as t2
on t1.parentid = t2.id
left join (
	select id as id,name as name,parentid as parentid from xingze.regiontest
) as t3
on t2.parentid = t3.id
where t3.name is not null
```