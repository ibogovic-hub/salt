base:
  prod:
    - match: nodegroup
    - admin
    - motd
    - repos
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
    - saltstack_minion
    
  group1:
    - match: nodegroup
    - motd
    - repos
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
    - repos
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
    - repos
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
    - repos
    - automatic-updates
    - dev
    - hosts
    - updates
    - apache
    - vim
  
  update:
    - match: nodegroup
    - admin
    - repos
    - updates
    - cron
    - nettools
    - motd
    - logrotate
    - hosts
    - automatic-updates
    - vim