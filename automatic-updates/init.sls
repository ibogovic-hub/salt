{% set this_state = "upgrades" %}

{{ this_state }} - file 50unattended-upgrades:
  file.managed:
    - name: '/etc/apt/apt.conf.d/50unattended-upgrades'
    - source: salt://automatic-updates/files/50unattended-upgrades
    - user: root
    - group : root
    - mode: 0644

{{ this_state }} - file 20auto-upgrades:
  file.managed:
    - name: '/etc/apt/apt.conf.d/20auto-upgrades'
    - source: salt://automatic-updates/files/20auto-upgrades
    - user: root
    - group : root
    - mode: 0644
