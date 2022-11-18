{% for user, data in pillar.get('admin_users_prod', {}).items() %}
{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - gid_from_name: {{ data['gid_from_name'] }}
    - groups:  {{ data['groups'] }}

{{ user }}:
  - name: {{ data['ssh_key'] }}
  - user: {{ user }}

{% endfor %}