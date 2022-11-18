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
    - ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me

  mel:
    - fullname: mel nekaj
    - shell: /bin/bash
    - home: /home/mel
    - uid: 10011
    - gid_from_name: True
    - groups:
      - root
      - users
    - ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me