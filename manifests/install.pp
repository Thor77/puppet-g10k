# @summary Install g10k from GitHub release archive
class g10k::install {
  $url = "https://github.com/${g10k::repo}/releases/download/v${g10k::version}/g10k-linux-amd64.zip"
  $archive_path = "/tmp/g10k-${g10k::version}.zip"

  archive { $archive_path:
    source       => $url,
    extract      => true,
    extract_path => $g10k::install_path,
    cleanup      => true,
  }

  file { "${g10k::install_path}/g10k":
    mode    => '0755',
    require => Archive[$archive_path],
  }
}
