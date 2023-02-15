{% for user, data in pillar.get('admin_users_dev', {}).items() %}
{{ user }}:
  user.absent:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - password: {{ data['password'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - groups:  {{ data['groups'] }}

{{ user }}_key:
  ssh_auth.absent:
    - name: {{ data['ssh_key'] }}
    - user: {{ user }}

{% endfor %}