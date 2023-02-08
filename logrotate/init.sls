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
