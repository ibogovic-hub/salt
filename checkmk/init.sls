{% set this_state = "check_mk-agent" %}


{{ this_state }} - install_checkmk-agent:
  module.run:
    - name: pkg.install
    - sources:
        - mypackage: salt://checkmk/files/check-mk.deb