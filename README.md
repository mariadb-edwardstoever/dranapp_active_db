# dranapp_active_db
This is a MariaDB schema. Use dranapp to create an active database with constant insert activity. Tables have IDs that are incremented using a trigger instead of auto_increment.

TABLES: dd_downloads_seq, dd_app_authors_seq, dd_apps_seq, dd_app_authors, dd_apps, dd_downloads

This schema can be used to demonstrate breaking replication from primary/master. Steps:
1) set session sql_log_bin=OFF;
2) INSERT INTO dd_app_authors or dd_apps or dd_downloads
3) logout/login
4) set session binlog_format=ROW;
5) INSERT INTO same table as before which breaks replication


