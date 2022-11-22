check-minion-version:
  cmd.run_stdout:
    - name: "apt update"

check-upgradeable-packages:
  cmd.run_stdout:
    - name: "apt list --upgradable"