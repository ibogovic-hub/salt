user_ivan:
  user.present:
    - name: ivan
    - fullname: ivan nekaj
    - shell: /bin/bash
    - home: /home/ivan
    - uid: 10010
    - gid: ivan
    - groups: 
      - users

ivan_key:
  ssh_auth.present:
    - name: ivan
    - user: ivan
    - source: salt://users/keys/ivan.pub