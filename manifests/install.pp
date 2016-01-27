class nodejs::install inherits nodejs {
  yumrepo { 'nodejs':
    baseurl => "http://uds-puppet.moscow.eurochem.ru/nodejs/${operatingsystem}/${operatingsystemmajrelease}/${architecture}",
    descr => 'Eurochem Nodejs Repository',
    enabled => 1,
    gpgcheck => 0,
  }

  package { 'nodejs':
    ensure => $package_ensure,
    require => Yumrepo['nodejs'],
    version => $nodejs_version,
    # before => Class['nodejs::config'],
  }
}
