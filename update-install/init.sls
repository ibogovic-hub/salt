install-upgradeable-packages:
  module.run:
    - cmd.run:
      - "apt full-upgrade -y"

try-to-register-cmk-agent:
  module.run:
    - cmd.run:
      - "cmk-update-agent register -H $(hostname) -U ibogovic -P 'asdf...!!!!!!'"