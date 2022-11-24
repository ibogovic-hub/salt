check-hostname:
  cmd.run:
    - hostname

check-salt-version:
  module.run:
    - cmd.run_stdout:
      - salt-minion --version

refresh-minion-packages:
  module.run:
    - cmd.run_stdout:
      - "apt update"

check-upgradeable-packages:
  module.run:
    - cmd.run_stdout:
      - "apt list --upgradable"