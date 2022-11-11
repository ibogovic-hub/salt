user_ivan:
  user.present:
    - name: ivan
    - fullname: ivan nekaj
    - shell: /bin/bash
    - home: /home/ivan
    - uid: 10010
    - groups: users

ivan_key:
  ssh_auth.present:
    - name: ivan
    - user: ivan
    - source: salt://base/users/keys/ivan.pub