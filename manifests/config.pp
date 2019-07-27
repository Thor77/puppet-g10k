# @summary Configure g10k
class g10k::config {
  file { $g10k::config_path:
    content => epp('g10k/g10k.yaml.epp', {
      config  => $g10k::cfg,
      sources => $g10k::sources,
    }),
  }
}
