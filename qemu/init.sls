{% set this_state = "qemu-install" %}

{{ this_state }} - install_qemu:
  pkg.installed:
    - pkgs:
      - qemu-guest-agent

{{ this_state }} - restart qemu agent service:
  service.running:
    - name: qemu-guest-agent
    - enable: true
    - reload: true