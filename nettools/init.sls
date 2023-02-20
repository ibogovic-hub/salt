{% set this_state = "package-install" %}

{{ this_state }} - install_packages:
  pkg.installed:
    - pkgs:
      - rsync
      - lftp
      - curl
      - vim
      - wget
      - unattended-upgrades