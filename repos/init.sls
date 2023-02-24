{% set this_state = 'repositories' %}

{{ this_state }} - latest salt repo:
  pkgrepo.managed:
    - name: salt ubuntu repository
    - baseurl: https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/
    - gpgcheck: true
    - gpgkey: https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub
    - enabled: true