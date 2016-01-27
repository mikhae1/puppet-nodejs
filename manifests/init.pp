class nodejs (
  $nodejs_version = $nodejs::params::nodejs_version,
  $package_ensure = $nodejs::params::package_ensure,
) inherits nodejs::params {
  include nodejs::install
  # include nodejs::config
}
