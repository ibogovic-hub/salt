{% set this_state = "logrotate" %}
{% if grains['os_family'] == 'Ubuntu' %}

{{ this_state }} - packages:
    pkg:
    - installed
    - names:
        - logrotate

{{ this_state }} - logrotate config file:
  file.managed:
    - name: /etc/logrotate.conf
    - source: salt://logrotate/conf/logrotate.conf
    - require:
      - pkg: logrotate - packages

{{ this_state }} - logrotate config file:
  file.managed:
    - name: /etc/logrotate.d/remote-log
    - source: salt://logrotate/conf/remote-log

{{ this_state }} - logrotate service:
  service.running:
    - name: logrotate
    - require:
      - {{ this_state }} - logrotate config file
    - watch:
      - file: {{ this_state }} - logrotate config file

{% else %}
{{ this_state }} - on non-implemented distro:
  test.fail_without_changes:
    - name: logrotate is not implemented for this OS family!

{% endif %}