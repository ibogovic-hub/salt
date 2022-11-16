base:
  '*':
    - initial
    - users
    - packages
    - pillar.exec

  'salt-minion03':
    - apache