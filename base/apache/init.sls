install_apache:
  pkg.installed:
    - pkgs:
      - apache2


index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: www-data
    - group: www-data
    - mode: 644
    - source: salt://srv/salt/base/apache/templates/index.html

apache_service:
  service.running:
    - name: apache2
    - enable: True