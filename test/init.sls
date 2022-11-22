check-minion-version:
  module.run:
    - name: cmd.run_stdout "apt update"

check-upgradeable-packages:
  module.run:
    - name: cmd.run_stdout "apt list --upgradable"