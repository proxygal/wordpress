!#/bin/bash
cd ~
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz 
mysql -u root -p
CREATE DATABASE wp_project;
CREATE USER admin@localhost;
GRANT ALL PRIVILEGES ON wordpress.* TO admin@localhost IDENTIFIED BY 'admin';
FLUSH PRIVILEGES;
exit;
sudo rsync -avP ~/wordpress/ /var/www/
cd /var/www/
sudo chown username:www-data /var/www -R 
sudo chmod g+w /var/www -R 
sudo apt-get install php5-gd
