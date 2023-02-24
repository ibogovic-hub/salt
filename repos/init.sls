{% set this_state = 'repositories' %}

{{ this_state }} - latest salt repo:
  pkgrepo.managed:
    - humanname: salt repository
    - name: deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/py3/ubuntu/20.04/amd64/3004 focal main
    - file: /etc/apt/sources.list.d/salt.list
    - baseurl: https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/
    - gpgcheck: 1
    - gpgkey: https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub
    - enabled: 1