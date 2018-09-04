apt-get update
apt-get install -y git-core curl nano wget
apt-get install -y build-essential libssl-dev
apt-get install -y nginx
apt-get install -y mariadb-server mariadb-client
apt-get install -y php-fpm php-mysql
mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bkp
cp /vagrant/config/nginx/default /etc/nginx/sites-available/default
nginx -t
systemctl reload nginx