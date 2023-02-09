install-upgradeable-packages:
  module.run:
    - cmd.run:
      - "apt full-upgrade -y"

set-hostname-variable:
  module.run:
    - cmd.run:
      - "kanta=$(hostname)"

try-to-register-cmk-agent:
  module.run:
    - cmd.run:
      - "cmk-update-agent register -H $kanta -U ibogovic -P 'asdf...!!!###'"