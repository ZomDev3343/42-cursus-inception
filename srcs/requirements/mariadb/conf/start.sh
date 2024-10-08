service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER_ADMIN}\`@'localhost' IDENTIFIED BY '${SQL_ADMIN_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER_ADMIN}\`@'%' IDENTIFIED BY '${SQL_ADMIN_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin shutdown
exec mysqld_safe
