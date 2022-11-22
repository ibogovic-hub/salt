base:
  '*':
    - examples
    - nettools
    - admin
    
  'dev':
    - match: nodegroup  
    - dev

  'salt-minion04*':
    - apache