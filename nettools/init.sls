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
      - qemu-guest-agent

{{ this_state }} - restart qemu agent service:
  service.running:
    - name: qemu-guest-agent
    - enable: true
    - reload: true