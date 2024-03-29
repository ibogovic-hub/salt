{% set this_state = "logrotate" %}

{{this_state}} - packages:
    pkg.installed:
    - pkgs:
        - logrotate

{{this_state}} - /etc/logrotate.conf:
  file.managed:
    - name: /etc/logrotate.conf
    - source: salt://logrotate/conf/logrotate.conf
    - mode: 0644
    - user: root
    - group: root
    - template: jinja

{{this_state}} - /etc/logrotate.d/salt-common:
  file.managed:
    - name: /etc/logrotate.d/salt-common
    - source: salt://logrotate/conf/salt-common
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    - require:
      - file: /etc/logrotate.conf

{{this_state}} - /etc/logrotate.d/rsyslog:
  file.managed:
    - name: /etc/logrotate.d/rsyslog
    - source: salt://logrotate/conf/rsyslog
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    - require:
      - file: /etc/logrotate.d/salt-common

{{this_state}} - logrotate_service:
  service.running:
    - name: logrotate
    - watch:
      - file: /etc/logrotate.d/rsyslog