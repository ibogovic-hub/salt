test-bashrc-file:
  file.blockreplace:
    - name: /root/.bashrc
    - marker_start: "# BLOCK TOP : salt managed zone : local services : please do not edit"
    - marker_end: "# BLOCK BOTTOM : end of salt managed zone --"
    - content: |
        # some added aliases
        alias ll='ls -latrhF'
        alias up='sudo apt -y update ; sudo apt -y full-upgrade ; sudo apt -y upgrade ; sudo apt -y dist-upgrade ; sudo apt -f install ; sudo apt -y autoremove ; sudo apt -y autoclean ; sudo apt -y clean'
    - show_changes: True
    - append_if_not_found: True