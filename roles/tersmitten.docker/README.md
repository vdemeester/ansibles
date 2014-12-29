## docker

[![Build Status](https://travis-ci.org/Oefenweb/ansible-docker.svg?branch=master)](https://travis-ci.org/Oefenweb/ansible-docker) [![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-docker-blue.svg)](https://galaxy.ansible.com/list#/roles/2309)

Set up the latest version of docker in Ubuntu systems.

#### Requirements

* `python-apt`

#### Variables

* `docker_binary` [default: `''`]: Customize location of Docker binary (especially for development testing)
* `docker_opts` [default: `''`]: Modify the daemon startup options
* `docker_http_proxy` [default: `''`]: If you need Docker to use an HTTP proxy, it can (also) be specified here
* `docker_tmpdir` [default: `''`]:  This is also a handy place to tweak where Docker's temporary files go
* `docker_manage_ufw` [default: `true`]: Whether or not `uwf` should be managed (change default forward policy) by this role
* `docker_manage_updatedb` [default: `true`]: Whether or not `updatedb` should be managed (disable indexing of `/var/lib/docker`) by this role
* `docker_install_api_client` [default: `false`]: Whether or not `docker-py` should be installed

## Dependencies

None

## Recommended

* `ansible-updatedb` ([see](https://github.com/Oefenweb/ansible-updatedb), when `docker_manage_ufw` is `false`)
* `ansible-ufw` ([see](https://github.com/Oefenweb/ansible-ufw), when `docker_manage_updatedb` is `false`)

#### Example

```yaml
---
- hosts: all
  roles:
  - docker
```

#### License

Apache v2.0

#### Author Information

Mischa ter Smitten (based on work of [angstwad](https://github.com/angstwad))

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/Oefenweb/ansible-docker/issues)!
