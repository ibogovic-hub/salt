{% set this_state = "admin" %}
include:
  {# - motd
  - automatic-updates
  - hosts
  - dev
  - examples
  - nettools
  - logrotate
  - cron
  - updates
  - checkmk
  - user-settings #}

{% for user, data in pillar.get('admin_users_prod', {}).items() %}
{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - password: {{ data['password'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - groups:  {{ data['groups'] }}

{{ user }}_key:
  ssh_auth.present:
    - name: {{ data['ssh_key'] }}
    - user: {{ user }}

{% endfor %}