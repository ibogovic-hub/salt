admin_users_dev:
  lego:
    - fullname: lego nekaj
    - shell: /bin/bash
    - home: /home/lego
    - uid: 10020
    - gid_from_name: True
    - groups:
      - users
    - ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me

  micek:
    - fullname: micek nekaj
    - shell: /bin/bash
    - home: /home/micek
    - uid: 10021
    - gid_from_name: True
    - groups:
      - users
    - ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me