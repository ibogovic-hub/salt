{% set this_state = "check_mk-agent" %}

{{ this_state }} - file check_mk-agent:
  file.managed:
    - name: '/tmp/'
    - source: salt://checkmk/files/check-mk-agent.deb
{# 
{{ this_state }} - file 20auto-upgrades:
  file.managed:
    - name: '/etc/apt/apt.conf.d/20auto-upgrades'
    - source: salt://automatic-updates/files/20auto-upgrades
    - user: root
    - group : root
    - mode: 0644 #}
