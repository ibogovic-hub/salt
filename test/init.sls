check-minion-version:
  module.run:
    - cmd.run_stdout:
      - "apt update"

check-upgradeable-packages:
  module.run:
    - cmd.run_stdout:
      - "apt list --upgradable"