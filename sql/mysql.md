
```sql
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'replica';
GRANT SELECT ON .*@.* TO 'replica'@'%';FLUSH PRIVILEGES;
```


```sql
SET GLOBAL read_only = ON;
FLUSH TABLES WITH READ LOCK;
```

```sql
SET GLOBAL read_only = OFF;
UNLOCK TABLES;
```

```sql
mysql -ureplica -p123456 -S /var/lib/mysql/mysql.sock -e "SET GLOBAL read_only = ON;"
mysql -ureplica -p123456 -S /var/lib/mysql/mysql.sock -e "FLUSH TABLES WITH READ LOCK;"
```


```sql
REVOKE ALL PRIVILEGES ON *.* FROM 'root'@'%';
grant select on *.* to 'root'@'%';
```



