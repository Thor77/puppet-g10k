# g10k

Manage and install [g10k](https://github.com/xorpaul/g10k)

## Usage

```puppet
class { 'g10k':
    cfg => {
        cachedir => '/var/cache/g10k',
    },
    sources => {
        environment => {
            remote => 'ssh://git@my.puppet.git:org/repo',
            basedir => '/etc/puppetlabs/code/environment',
        },
        hiera => {
            remote => 'ssh://git@my.puppet.git:org/repo',
            basedir => '/etc/puppetlabs/code/hiera',
        },
    },
}
```

## Limitations

* currently only supports Debian
* no tests
