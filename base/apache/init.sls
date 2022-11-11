install_apache:
  pkg.installed:
    - pkgs:
      - apache


index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: apache
    - group: apache
    - mode: 644
    - source: salt://srv/salt/apache/templates/index.html

apache_service:
  service.running:
    - name: apache
    - enable: True