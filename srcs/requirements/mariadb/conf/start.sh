service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS inception_db;"
mysql -e "CREATE USER IF NOT EXISTS god@'localhost' IDENTIFIED BY 'heaven';"
mysql -e "CREATE USER IF NOT EXISTS bob@'localhost' IDENTIFIED BY 'bibidi';"
mysql -e "GRANT ALL PRIVILEGES ON inception_db.* TO god@'%' IDENTIFIED BY 'heaven';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin shutdown
exec mysqld_safe
