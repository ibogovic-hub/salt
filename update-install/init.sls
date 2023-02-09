install-upgradeable-packages:
  module.run:
    - cmd.run:
      - "apt full-upgrade -y"

add-checkmk-registration:
  module.run:
    - cmd.run:
      - kanta=$(hostname) ; cmk-update-agent register -H $kanta -U ibogovic -P 'asdf...!!!###'"