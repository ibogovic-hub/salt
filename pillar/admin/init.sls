admin_users_prod:
  ivan:
    - fullname: ivan nekaj
    - shell: /bin/bash
    - home: /home/ivan
    - uid: 10010
    - gid_from_name: True
    - groups:
      - root
      - users
    - ssh_key: {{ pillar['key'] }}

  mel:
    - fullname: mel nekaj
    - shell: /bin/bash
    - home: /home/mel
    - uid: 10011
    - gid_from_name: True
    - groups:
      - root
      - users
    - ssh_key: {{ pillar['key'] }}