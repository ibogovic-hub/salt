install_network_packages:
  pkg.installed:
    - pkgs:
      - rsync
      - lftp
      - curl
      - vim
      - wget
      - unattended-upgrades
      - qemu-guest-agent