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

{{ this_state }} - restart logrotate service:
  service.running:
    - name: logrotate
    - enable: true
    - restart: true
    - watch:
      - file: /etc/logrotate.conf
      - file: /etc/logrotate.d/salt-common
      - file: /etc/logrotate.d/rsyslog