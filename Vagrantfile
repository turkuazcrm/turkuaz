Vagrant.configure('2') do |config|
  config.vm.box = 'debian/bullseye64'

  # Linux and Windows host machines need to use different kind of
  # technology to provide best out of their power.  Linux machines
  # should use NFS and Windows should use SMB.  VirtualBox provides
  # simple synced_folder type, but also comes with speed penalty and
  # known bugs.
  #
  synced_folder_options =
    if Vagrant::Util::Platform.linux?
      [type: 'nfs',
        nfs_version: 4, mount_options: %w[noatime nodiratime relatime]]
    else
      [type: 'smb']
    end

  # Default Vagrant installation comes with /vagrant synced_folder
  # enabled.  Since we don't need to provide identical path, and
  # simplify web server configuration, we aimed to disable the default
  # synced_folder path.
  #
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '.', '/var/www/html', *synced_folder_options

  config.vm.network :forwarded_port, guest: 80, host: 8000, host_ip: '127.0.0.1'

  config.vm.provider :libvirt do |guest|
    guest.memory = 1024
    # TODO: Remove personal storage pool name instead find different
    #   method
    #
    guest.storage_pool_name = 'berkhan'
  end

  config.vm.provider :virtualbox do |guest|
    guest.memory = 1024
  end

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
