check-minion-version:
  module.run:
    - name: cmd.run_stdout
    - command: "apt update"

check-upgradeable-packages:
  module.run:
    - name: cmd.run_stdout
    - command: "apt list --upgradable"