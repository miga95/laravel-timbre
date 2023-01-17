CREATE DATABASE IF NOT EXISTS laravel;
CREATE DATABASE IF NOT EXISTS archive;


-- create the users for each database
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY 'admin';

GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `laravel`.* TO 'admin'@'%';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `archive`.* TO 'admin'@'%';

FLUSH PRIVILEGES;
