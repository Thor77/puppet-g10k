# @summary Install and configure g10k
# @param version [String] Version to install
# @param repo [String] GitHub repo to download release from
# @param install_path [String] Directory to install binary into
class g10k (
  String $version = $g10k::params::version,
  String $repo = $g10k::params::repo,
  String $install_path = $g10k::params::install_path,
  String $config_path = $g10k::params::config_path,
  Hash $cfg = {},
  Hash $sources = {},
) inherits g10k::params { 
  contain g10k::install
  contain g10k::config
}
