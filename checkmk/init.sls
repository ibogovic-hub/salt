{% set this_state = "check_mk-agent" %}

{# {{ this_state }} - file check_mk-agent:
  file.managed:
    - name: '/tmp/'
    - source: salt://checkmk/files/check-mk-agent.deb #}

{# {{ this_state }} - file 20auto-upgrades:
  file.managed:
    - name: '/etc/apt/apt.conf.d/20auto-upgrades'
    - source: salt://automatic-updates/files/20auto-upgrades
    - user: root
    - group : root
    - mode: 0644 #}

{{ this_state }} - install_checkmk-agent:
  pkg.installed:
    - sources:
      - checkmk-agent: wget "http://10.10.10.201/monitoring/check_mk/wato.py?folder=&mode=edit_ruleset&varname=agent_config%3Acmk_update_agent" -O test.deb

{# {{ this_state }} - install_checkmk-agent:
  module.run:
    - name: pkg.install
    - sources:
        - mypackage: salt://checkmk/files/check-mk.deb #}