base:
  '*':
    - examples
    - nettools
    - admin
  'salt-minion03*. salt-minion04*':
    - match: list
    - dev