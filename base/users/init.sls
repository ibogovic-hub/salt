user_ivan:
  user.present:
    - name: ivan
    - fullname: ivan nekaj
    - shell: /bin/bash
    - home: /home/ivan
    - uid: 10010
    - gid_from_name: True
    - groups: wheel

ivan_key:
  ssh_auth.present:
    - name: ivan
    - user: ivan
    - source: salt://users/keys/ivan.pub