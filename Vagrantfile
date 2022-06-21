Vagrant.configure('2') do |config|
  config.vm.box = 'debian/bullseye64'

  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '.', '/var/www/html', type: 'nfs',
    nfs_version: 4, mount_options: ['noatime', 'nodiratime', 'relatime']

  config.vm.network :forwarded_port, guest: 80, host: 8000,
    host_ip: '127.0.0.1'

  config.vm.provider :libvirt do |guest|
    guest.memory = 1024
    guest.storage_pool_name = 'berkhan'
  end

  config.vm.provision :shell, inline: <<-SHELL
    apt-get update
    apt-get install --yes --no-install-recommends apache2 php \
       php-curl php-imap php-xml php-mysql mariadb-server \
       composer yarnpkg
    su vagrant -c 'yarnpkg global add prettier @prettier/plugin-php"
    mariadb -u root -e "
      CREATE DATABASE vtiger_development;
      CREATE USER 'vtiger'@'localhost' IDENTIFIED BY 'vtiger';
      GRANT ALL PRIVILEGES ON vtiger_development.* TO 'vtiger'@'localhost';
      FLUSH PRIVILEGES;
    "
  SHELL
end
