# salt/ssh_password_login.sls

# Install the sshd package (if it's not already installed)
openssh-server:
  pkg.installed

# Update the sshd_config file
/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/file/sshd_config
    - user: root
    - group: root
    - mode: 600
    - template: jinja

# Restart the sshd service to apply the changes
sshd-restart:
  service.running:
    - name: sshd
    - watch:
      - file: /etc/ssh/sshd_config