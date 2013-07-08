# This class will ensure SSH is setup, configured and running.
class sshd::setup {
  service { 'ssh':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['openssh-server']
  }

  package { 'openssh-server': ensure => installed }
}
