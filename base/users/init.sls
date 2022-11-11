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

{% for user in salt['pillar.get']%}}