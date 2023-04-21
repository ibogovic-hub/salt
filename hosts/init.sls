test-etc-hosts-blockreplace:
  file.blockreplace:
    - name: /etc/hosts
    - marker_start: "# BLOCK TOP : salt managed zone : local services : please do not edit"
    - marker_end: "# BLOCK BOTTOM : end of salt managed zone --"
    - content: |
        192.168.1.12  check-mk
        192.168.1.252 print-scan
        192.168.1.15  salt-master
        10.10.10.254  torente
    - show_changes: True
    - append_if_not_found: True