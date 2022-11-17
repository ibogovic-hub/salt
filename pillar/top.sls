base:
  '*':
    - users

  'salt-minion03':
    - users_dev.users

  'salt-minion04':
    - exec