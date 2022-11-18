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