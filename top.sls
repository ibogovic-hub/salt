base:
  'prod':
    - match: nodegroup
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
    
  'group01':
    - match: nodegroup  
    - dev