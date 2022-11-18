{% for user, data in pillar.get('admin_users_prod', {}).itemas() %}
user_{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - gid_from_name: {{ data['gid_from_name'] }}
    - groups:  {{ data['groups'] }}

{{ user }}_key:
  - name: {{ data['ssh_key'] }}
  - user: {{ user }}

{% endfor %}