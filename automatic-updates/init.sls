{% set this_state = "upgrades" %}

{{ this_state }} - file to auto update:
  file.managed:
    - name: '/etc/apt/apt.conf.d/50unattended-upgrades'
    - source: salt://automatic-upgrades/files/50unattended-upgrades
    - user: root
    - group : root
    - mode: 0644
