install-upgradeable-packages:
  module.run:
    - cmd.run:
      - "apt full-upgrade -y"

add-checkmk-registration:
  module.run:
    - cmd.run:
      - "cmk-update-agent register -H check-mk -U ibogovic -P 'asdf...!!!###'"