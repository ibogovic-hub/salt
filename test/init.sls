check-minion-version:
  cmd.run:
    - name: "apt update"

check-upgradeable-packages:
  cmd.run:
    - name: "apt --upgradeable"