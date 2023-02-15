run_logrotate:
  cron.present:
    - name: /usr/sbin/logrotate /etc/logrotate.conf
    - user: root
    - special: '@hourly'
    {# - user: root
    - minute: 00
    - hour: 01
    - daymonth: '*'
    - month: '*'
    - dayweek: '*' #}
run_rsyslog:
  cron.present:
    - name: /usr/sbin/logrotate /etc/logrotate.d/rsyslog
    - user: root
    - special: '@hourly'
{# cron_systemd-tmpfiles:
  cron.present:
    - name: systemd-tmpfiles --clean
    - user: root
    - minute: 0
    - hour: 0
    - require:
      - file: tmp.conf #}