check-minion-version:
  module.run:
    - name: cmd.run_stdout
    - name: "apt update"

check-upgradeable-packages:
  module.run:
    - name: cmd.run_stdout
    - name: "apt list --upgradable"