{% set this_state = "logrotate" %}

{{ this_state }} - packages:
    pkg.installed:
    - pkgs:
        - logrotate

{{ this_state }} - logrotate config file:
  file.managed:
    - name: /etc/logrotate.conf
    - source: salt://logrotate/conf/logrotate.conf
    - require:
      - pkg: {{ this_state }} - packages

{{ this_state }} - salt-common config file:
  file.managed:
    - name: /etc/logrotate.d/salt-common
    - source: salt://logrotate/conf/salt-common
    - require:
      - pkg: {{ this_state }} - packages

{{ this_state }} - rsyslog config file:
  file.managed:
    - name: /etc/logrotate.d/rsyslog
    - source: salt://logrotate/conf/rsyslog
    - require:
      - pkg: {{ this_state }} - packages

{# {{ this_state }} - restart logrotate service:
  service.running:
    - name: logrotate
    - enable: true
    - reload: true
    - watch:
      - pkg: logrotate #}

{{ this_state }} - run_on_changes:
  cmd.wait:
    - name: logrotate
    - enable: true
    - reload: true
    - watch:
      - file: {{ this_state }} - logrotate config file
      - file: {{ this_state }} - salt-common config file
      - file: {{ this_state }} - rsyslog config file