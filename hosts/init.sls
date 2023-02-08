test-etc-hosts-blockreplace:
  file.blockreplace:
    - name: /etc/hosts
    - marker_start: "# BLOCK TOP : salt managed zone : local services : please do not edit"
    - marker_end: "# BLOCK BOTTOM : end of salt managed zone --"
    - content: |
        10.10.10.201 check-mk
        10.10.10.150 ubu-test
        10.10.10.143 salt-minion03 salt-minion03
        10.10.10.136 salt-minion08 salt-minion08
        10.10.10.146 salt-minion12 salt-minion12
        10.10.10.141 salt-minion01 salt-minion01
        10.10.10.142 salt-minion02 salt-minion02
        10.10.10.135 salt-minion07 salt-minion07
        10.10.10.139 salt-minion11 salt-minion11
        10.10.10.134 salt-minion06 salt-minion06
        10.10.10.138 salt-minion10 salt-minion10
        10.10.10.133 salt-minion05 salt-minion05
        10.10.10.137 salt-minion09 salt-minion09
        10.10.10.144 salt-minion04 salt-minion04
        10.10.10.148 salt-minion15 salt-minion15
        10.10.10.147 salt-minion13 salt-minion13
        10.10.10.145 salt-minion14 salt-minion14
    - show_changes: True
    - append_if_not_found: True