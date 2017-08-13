pyenv
=========

[![Build Status](https://travis-ci.org/eendroroy/ansible-role-pyenv.svg?branch=master)](https://travis-ci.org/eendroroy/ansible-role-pyenv)

Ansible role to install pyenv

Role Variables
--------------

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
  - version: 2.7.13
```

Supported OS
------------

- Ubuntu
    - precise (12.04)
    - saucy (13.10)
    - trusty (14.04)
    - xenial (16.04) - xenial requires python2 to be installed for ansible support

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: eendroroy.pyenv, pyenv_env: system }

License
-------

MIT

Author Information
------------------

**Indrajit Roy** - *owner* - [eendroroy](https://github.com/eendroroy)
