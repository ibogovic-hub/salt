base:
  prod:
    - match: nodegroup
    - admin
    - motd
    - automatic-updates
    - hosts
    - dev
    - examples
    - nettools
    - logrotate
    - cron
    - updates
    - checkmk
    - user-settings
    - vim
    
  group1:
    - match: nodegroup
    - dev
  
  group2:
    - match: nodegroup
    - dev

  group3:
    - match: nodegroup
    - dev
    - nettools
  
  group4:
    - match: nodegroup
    - dev