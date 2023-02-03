50unattended-upgrades:
  file.managed:
    - name: /etc/apt/apt.conf.d/50unattended-upgrades
    - source: salt://automatic-upgrades/files/50unattended-upgrades
    - user: root
    - group : root
    - mode: "0644"