user_mel:
  user.present:
    - name: mel
    - fullname: mel nekaj
    - shell: /bin/bash
    - home: /home/mel
    - uid: 10011
    - groups: wheel

mel_key:
  ssh_auth.present:
    - name: mel
    - user: mel
    - source: salt://users/keys/mel.pub