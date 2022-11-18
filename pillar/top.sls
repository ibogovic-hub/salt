base:
  '*':
    - default
    - admin

  'salt-minion03*. salt-minion04*':
    - match: list
    - dev