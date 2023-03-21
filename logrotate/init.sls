{% set this_state = "logrotate" %}

{{this_state}} - packages:
    pkg.installed:
    - pkgs:
        - logrotate

{{this_state}} - /etc/logrotate.conf:
  file.managed:
    - source: salt://logrotate/conf/logrotate.conf
    - mode: 0644
    - user: root
    - group: root
    - template: jinja

{{this_state}} - /etc/logrotate.d/salt-common:
  file.managed:
    - source: salt://logrotate/conf/salt-common
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    - require:
      - file: {{this_state}} - /etc/logrotate.conf

{{this_state}} - /etc/logrotate.d/rsyslog:
  file.managed:
    - source: salt://logrotate/conf/rsyslog
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    - require:
      - file: {{this_state}} - /etc/logrotate.d/salt-common

{{this_state}} - logrotate_service:
  service.running:
    - name: logrotate
    - watch:
      - file: {{this_state}} - /etc/logrotate.d/rsyslog