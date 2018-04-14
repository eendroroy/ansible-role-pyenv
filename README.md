# ansible-role-pyenv

[![Build Status](https://travis-ci.org/eendroroy/ansible-role-pyenv.svg?branch=master)](https://travis-ci.org/eendroroy/ansible-role-pyenv)


[![GitHub tag](https://img.shields.io/github/tag/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/tags)

[![Contributors](https://img.shields.io/github/contributors/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/graphs/contributors)
[![GitHub last commit (branch)](https://img.shields.io/github/last-commit/eendroroy/ansible-role-pyenv/master.svg)](https://github.com/eendroroy/ansible-role-pyenv)
[![license](https://img.shields.io/github/license/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/issues)
[![GitHub closed issues](https://img.shields.io/github/issues-closed/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/issues?q=is%3Aissue+is%3Aclosed)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/pulls)
[![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/eendroroy/ansible-role-pyenv.svg)](https://github.com/eendroroy/ansible-role-pyenv/pulls?q=is%3Apr+is%3Aclosed)

Ansible role to install pyenv

### Role Variables

Set `pyenv_env: system` to install pyenv system-wide, or `pyenv_env: local` for local installation.

Add plugins under `pyenv.plugins` var.

Define python versions to install under `pythons` var.

Example:

```yml
pyenv_env: system

pyenv:
  plugins:
    - { name: pyenv-virtualenv, repo: 'https://github.com/pyenv/pyenv-virtualenv.git' }

pythons:
  - version: 2.7.14
```

### Supported OS

- Ubuntu
    - precise (12.04)
    - trusty  (14.04)
    - xenial  (16.04) - xenial requires python2 to be installed for ansible support
- CentOS
    - 6
    - 7
- RHEL
    - 6
    - 7

### Example Playbook

```yml
---
# Example playbook
- name: pyenv setup
  hosts: servers
  gather_facts: yes

  tasks:
  - include_role:
      name: eendroroy.pyenv
    vars:
      pyenv_env: system
      pythons:
        - version: 2.7.14
        - version: 3.6.5
```


## Contributing

Bug reports and pull requests are welcome on GitHub at [ansible-role-pyenv](https://github.com/eendroroy/ansible-role-pyenv) repository.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Author

* **indrajit** - *Owner* - [eendroroy](https://github.com/eendroroy)

## License

The project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
