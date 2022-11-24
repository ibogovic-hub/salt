install-upgradeable-packages:
  module.run:
    - cmd.run_stdout:
      - "apt full-upgrade -y"