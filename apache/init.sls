{% set this_state = "apache2" %}

{{ this_state }} - install_packages:
  pkg.installed:
    - pkgs:
      - apache2

{{ this_state }} - index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: www-data
    - group: www-data
    - mode: 644
    - source: salt://apache/templates/index.html
    - template: jinja

{{ this_state }} - apache_service:
  service.running:
    - name: apache2
    - enable: True