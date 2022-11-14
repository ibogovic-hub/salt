admin_users:
  ivan:
    fullname: ivan nekaj
    shell: /bin/bash
    home: /home/ivan
    uid: 10100
    gid_from_name: True
    groups:
      - users
      - root
    ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me
  mel:
    fullname: mel nekaj
    shell: /bin/bash
    home: /home/mel
    uid: 10101
    gid_from_name: True
    groups:
      - users
      - root
    ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me
  lego:
    fullname: legolas nekaj
    shell: /bin/bash
    home: /home/lego
    gid_from_name: True
    gid: lego
    groups:
      - users
      - root
    ssh_key: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRDZG3pXmA+xHJbZAR0/dC8C/u/NrIIf2K7bybQekO6 ivan@pm.me