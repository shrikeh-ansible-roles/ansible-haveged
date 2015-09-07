# Haveged
------------

This role installs [haveged][haveged] on a server.

> "The haveged project is an attempt to provide an easy-to-use, unpredictable random number generator based upon an adaptation of the HAVEGE algorithm. Haveged was created to remedy low-entropy conditions in the Linux random device that can occur under some workloads, especially on headless servers. Current development of haveged is directed towards improving overall reliablity and adaptability while minimizing the barriers to using haveged for other tasks."

## Requirements
------------

On CentOS flavours, you will need to ensure that you have the [Extra Packages for Enterprise Linux (EPEL)][epel] repository. Various roles cover this on Galaxy and rather than choosing one I leave it to you to choose.

## Role Variables
--------------
#### [`haveged_pkg_state_latest`][haveged_pkg_state_latest]
Default: `false`

Whether to use "present" or "latest" for package installation.

#### [`haveged_low_entropy_watermark`][haveged_low_entropy_watermark]
Default: `1024`

The desired [low entropy watermark][haveged_low_entropy] to use in init files.

#### [`haveged_template_mode`][haveged_template_mode]
Default: `0600`

The desired file mode for the template. Debian only.

#### [`haveged_template_owner`][haveged_template_owner]
Default: `root`
Owner of the init file. Used for Debian only.

#### [`haveged_template_group`][haveged_template_group]
Default: `root`
Group of the init file. Used for Debian only.

#### [`haveged_template_path`][haveged_template_path]
Default: `/etc/default/haveged`

File to be written to. Used for Debian only.

#### [`haveged_template_src`][haveged_template_src]
Default: `debian.j2`

Template to use for the init file. Used for Debian only.

####[`haveged_config_initd_path`][haveged_config_initd_path]
Default: `/etc/init.d/haveged`

Path to the init.d script. Used for CentOS/RHEL only.

####[`haveged_systemd_path_centos`][haveged_systemd_path_centos]
Default: `/etc/systemd/system/multi-user.target.wants/haveged.service`

Path to the systemd script on CentOS flavours.

####[`haveged_systemd_path_debian`][haveged_systemd_path_debian]
Default: `/etc/systemd/system/default.target.wants/haveged.service`

Path to the systemd script on Debian flavours.

## Dependencies
------------
None.

## Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```YAML
%YAML 1.2
---
- hosts: production
  roles:
    - { role: shrikeh.haveged, haveged_low_entropy_watermark: 2048 }
...
```

## License
-------

[MIT][licence]

## Author Information
------------------

Contact me on Twitter @[barney_hanlon][twitter]

[haveged]: http://www.issihosts.com/haveged/ "Link to haveged documentation"
[epel]: https://fedoraproject.org/wiki/EPEL "Link to EPEL"
[twitter]: https://twitter.com/barney_hanlon "Link to my Twitter page"
[licence]: https://raw.githubusercontent.com/shrikeh/ansible-jumpcloud/master/LICENSE
[haveged_low_entropy]: https://www.digitalocean.com/community/tutorials/how-to-setup-additional-entropy-for-cloud-servers-using-haveged
[haveged_pkg_state_latest]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L3
[haveged_low_entropy_watermark]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L4
[haveged_template_mode]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L6
[haveged_template_owner]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L7
[haveged_template_group]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L8
[haveged_template_path]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L9
[haveged_template_src]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L10
[haveged_config_initd_path]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L12
[haveged_systemd_path_centos]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L14
[haveged_systemd_path_debian]: https://github.com/shrikeh/ansible-haveged/blob/master/defaults/main.yml#L15
