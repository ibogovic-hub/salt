{% for user, data in pillar.get('admin_users', {}).items() %}
user_{{ user }}:
  user.present:
    - user: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - gid: {{ data['gid'] }}
    - groups: {{ data['groups'] }}

{{ user }}_key:
  ssh_auth.present:
    - name: {{ user['ssh_key'] }}
    - user: {{ user }}

{% endfor %}