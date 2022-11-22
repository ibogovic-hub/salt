Upgrade Minions:
  cmd.run:
    - name:
      - "apt -y update ; apt -y full-upgrade ; apt -y upgrade ; apt -y dist-upgrade ; apt -f install ; apt -y autoremove ; apt -y autoclean ; apt -y clean"