class augeas::suse inherits augeas::base {

  package {
    ['augeas-lenses', 'libaugeas0', 'augeas']:
      ensure => "${augeas::base::version}",
      before => File['/usr/share/augeas/lenses/contrib'],
  }

}
