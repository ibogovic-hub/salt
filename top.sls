base:
  'prod':
    - admin
    - dev
    - motd
    - automatic-updates
    - hosts
    - examples
    - nettools
    - logrotate
    - cron
    - updates
    - checkmk
    - user-settings
    
  'dev':
    - match: nodegroup  
    - group01
    - group02
    - group03
    - group04