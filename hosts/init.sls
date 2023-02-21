test-etc-hosts-blockreplace:
  file.blockreplace:
    - name: /etc/hosts
    - marker_start: "# BLOCK TOP : salt managed zone : local services : please do not edit"
    - marker_end: "# BLOCK BOTTOM : end of salt managed zone --"
    - content: |
        192.168.1.12	check-mk
        192.168.1.252	print-scan
        192.168.1.15	salt-master
        192.168.1.130	salt-minion01
        192.168.1.119	salt-minion02
        192.168.1.122	salt-minion03
        192.168.1.146	salt-minion04
        192.168.1.148	salt-minion05
        192.168.1.101	salt-minion06
        192.168.1.136	salt-minion07
        192.168.1.120	salt-minion08
        192.168.1.106	salt-minion09
        192.168.1.149	salt-minion10
        192.168.1.129	salt-minion11
        192.168.1.102	salt-minion12
        192.168.1.138	salt-minion13
        192.168.1.128	salt-minion14
        192.168.1.103	salt-minion15
        10.10.10.254  torente
        192.168.1.11  ubu-test
        192.168.1.254 pikachu
    - show_changes: True
    - append_if_not_found: True