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
#    - checkmk
    - user-settings
    - vim
    
  group1:
    - match: nodegroup
    - motd
    - automatic-updates
    - hosts
    - dev
    - examples
    - nettools
    - logrotate
    - cron
    - updates
#    - checkmk
    - user-settings
    - vim
  
  group2:
    - match: nodegroup
    - motd
    - automatic-updates
    - hosts
    - dev
    - examples
    - nettools
    - logrotate
    - cron
    - updates
#    - checkmk
    - user-settings
    - vim

  group3:
    - match: nodegroup
    - motd
    - automatic-updates
    - hosts
    - dev
    - examples
    - nettools
    - logrotate
    - cron
    - updates
#    - checkmk
    - user-settings
    - vim
  
  group4:
    - match: nodegroup
    - motd
    - automatic-updates
    - dev
    - updates
#    - checkmk
    - vim
  
  update:
    - match: nodegroup
    - admin
    - updates
    - cron
    - nettools
    - motd
    - logrotate
    - hosts
    - automatic-updates
    - vim