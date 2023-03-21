run_logrotate:
  cron.present:
    - name: /usr/sbin/logrotate -fv /etc/logrotate.conf
    - user: root
    - special: '@daily'
    - require:
      - file: /etc/logrotate.conf
    
run_rsyslog:
  cron.present:
    - name: /usr/sbin/logrotate -fv /etc/logrotate.d/rsyslog
    - user: root
    - special: '@daily'
    - require:
      - file: /etc/logrotate.d/rsyslog
