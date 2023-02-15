base:
  'prod':
    - match: nodegroups.prod
    - admin
  
  'group01':
    - match: nodegroups.group01
    - dev