ivan:
  user.present:
    - fullname: ivan nekaj
    - shell: /bin/bash
    - home: /home/ivan
    - uid: 4000
    - gid: 4000
    - groups:
      - operator
      - users

ivan_key:
  ssh_auth.present:
    - name: ivan
    - user: ivan
    - source: salt://users/keys/ivan.pub

{% for user, data in pillar.get('admin_users', {}).items() %}
user_{{ user }}:
  user.present:
    - user: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - uid: {{ data['uid'] }}
    - gid: {{ data['gid'] }}
    - groups: {{ data['groups'] }}
    - ssh_key: {{ data['ssh_key'] }}

{{ user }}_key:
  ssh_auth.present:
    - name: {{ user['ssh_key'] }}
    - user: {{ user }}