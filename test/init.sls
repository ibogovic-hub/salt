check-minion-version:
  cmd.run:
    - name: "salt-run manage.versions"

check-upgradeable-packages:
  cmd.run:
    - name: "apt update"