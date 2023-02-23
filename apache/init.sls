install_apache:
  pkg.installed:
    - apache2

index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: www-data
    - group: www-data
    - mode: 644
    - source: salt://apache/templates/index.html
    - template: jinja

apache_service:
  service.running:
    - name: apache2
    - enable: True