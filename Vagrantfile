Vagrant.configure('2') do |config|
  config.vm.box = 'debian/bullseye64'

  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '.', '/var/www/html'

  config.vm.network :forwarded_port, guest: 80, host: 8000,
    host_ip: '127.0.0.1'


  # TODO: Generate a self generated SSL for Apache HTTP and forward
  #   only 443 port
  #
  config.vm.provision :shell, inline: <<-SHELL
    apt-get update
    apt-get install --yes --no-install-recommends git apache2 php \
       php-mbstring php-curl php-imap php-xml php-mysql mariadb-server \
       yarnpkg composer
    su vagrant -c 'yarnpkg global add prettier @prettier/plugin-php'
    mariadb -e "
      CREATE DATABASE vtiger_development;
      CREATE USER 'vtiger'@'localhost' IDENTIFIED BY 'vtiger';
      GRANT ALL PRIVILEGES ON vtiger_development.* TO 'vtiger'@'localhost';
      FLUSH PRIVILEGES;
    "
    cat <<-'EOF' > /etc/mysql/mariadb.conf.d/100-sql-mode.cnf
[mysqld]
sql_mode = ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION
EOF
    systemctl restart mariadb.service
  SHELL
end
