admin_users_dev:
  lego:
    - fullname: lego nekaj
    - shell: /bin/bash
    - home: /home/lego
    - uid: 10020
    - gid_from_name: True
    - groups:
      - users
    - ssh_key: {{ pillar['key'] }}

  micek:
    - fullname: micek nekaj
    - shell: /bin/bash
    - home: /home/micek
    - uid: 10021
    - gid_from_name: True
    - groups:
      - users
    - ssh_key: {{ pillar['key'] }}