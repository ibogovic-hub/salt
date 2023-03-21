packages:
    pkg.installed:
    - pkgs:
        - logrotate

/etc/logrotate.conf:
  file.managed:
    - source: salt://logrotate/conf/logrotate.conf
    - mode: 0644
    - user: root
    - group: root
    - template: jinja

/etc/logrotate.d/salt-common:
  file.managed:
    - source: salt://logrotate/conf/salt-common
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    - require:
      - file: /etc/logrotate.conf

/etc/logrotate.d/rsyslog:
  file.managed:
    - source: salt://logrotate/conf/rsyslog
    - mode: 0644
    - user: root
    - group: root
    - template: jinja
    - require:
      - file: /etc/logrotate.d/salt-common

logrotate_service:
  service.running:
    - name: logrotate
    - watch:
      - file: /etc/logrotate.d/rsyslog