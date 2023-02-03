{%- set this_state = "auto-updates" %}


{{ this_state }} - prerequisites for updates satisfied:
  pkg.installed:
    - pkgs:
      - vim
      - curl
      - wget
      - unattended-upgrades

{{ this_state }} - 50unattended-upgrades:
  file.managed:
    - name: /etc/apt/apt.conf.d/50unattended-upgrades
    - source: salt://automatic-upgrades/files/50unattended-upgrades
    - user: root
    - group : root
    - mode: "0644"
    - require:
      - pkgs: {{ this_state }} - prerequisites for updates satisfied