base:
  '*':
    - default
    - admin

  'salt-minion03.home, salt-minion04.home':
    - match: list
    - dev