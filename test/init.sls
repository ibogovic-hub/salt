check-minion-version:
  module.run:
    cmd.run_stdout:
      - name: 
        - "apt update"

check-upgradeable-packages:
  module.run:
    cmd.run_stdout:
      - name: 
        - "apt list --upgradable"