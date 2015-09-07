# Haveged
=========

This role installs [haveged][haveged] on a server.

> "The haveged project is an attempt to provide an easy-to-use, unpredictable random number generator based upon an adaptation of the HAVEGE algorithm. Haveged was created to remedy low-entropy conditions in the Linux random device that can occur under some workloads, especially on headless servers. Current development of haveged is directed towards improving overall reliablity and adaptability while minimizing the barriers to using haveged for other tasks."

## Requirements
------------

On CentOS flavours, you will need to ensure that you have the [Extra Packages for Enterprise Linux (EPEL)][epel] repository. Various roles cover this on Galaxy and rather than choosing one I leave it to you to choose.

## Role Variables
--------------



## Dependencies
------------



## Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: shrikeh.haveged, haveged_low_entropy_watermark: 2048 }

## License
-------

MIT

## Author Information
------------------

Contact me on Twitter @[barney_hanlon][twitter]

[haveged]: http://www.issihosts.com/haveged/ "Link to haveged documentation"
[epel]: https://fedoraproject.org/wiki/EPEL "Link to EPEL"
[twitter]: https://twitter.com/barney_hanlon "Link to my Twitter page"
