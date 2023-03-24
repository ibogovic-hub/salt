{% set distro = grains['os_family'] %}
{% set codename = grains.get('lsb_distrib_codename', 'unknown') %}

salt-minion:
  pkgrepo.managed:
    - name: saltstack
    - humanname: SaltStack repository
    - baseurl: https://repo.saltstack.com/py3/{{ distro }}/{{ codename }}/{{ grains['cpuarch'] }}/latest
    - gpgkey: https://repo.saltstack.com/py3/{{ distro }}/{{ codename }}/{{ grains['cpuarch'] }}/latest/SALTSTACK-GPG-KEY.pub
    #- gpgcheck: 1

  pkg.installed:
    - name: salt-minion
    - refresh: True

  service.running:
    - name: salt-minion
    - enable: True
