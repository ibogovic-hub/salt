check-hostname:
  module.run:
    - cmd.run:
      - hostnamectl

check-salt-version:
  module.run:
    - cmd.run:
      - salt-minion --version

refresh-minion-packages:
  module.run:
    - cmd.run:
      - "apt update"

check-upgradeable-packages:
  module.run:
    - cmd.run:
      - "apt list --upgradable"