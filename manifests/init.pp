class augeas {
  case $operatingsystem {
    /RedHat|CentOS|Fedora/:   { include augeas::redhat }
    /Debian|Ubuntu|kFreeBSD/: { include augeas::debian }
    /OpenSuSE|SuSE/:          { include augeas::suse }
    default:                  { include augeas::base }
  }
}
