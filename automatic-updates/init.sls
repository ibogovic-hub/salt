{% set this_state = "upgrades" %}

# Step 1: Check if packages are installed
check_packages:
  pkg.installed:
    - pkgs:
      - unattended-upgrades
      - update-notifier-common

# Step 2: Upgrade or install packages
upgrade_packages:
  cmd.run:
    - name: apt-get upgrade -y
    - unless: dpkg -s unattended-upgrades && dpkg -s update-notifier-common

install_packages:
  pkg.installed:
    - pkgs:
      - unattended-upgrades
      - update-notifier-common

# Step 3: Enable and start the service on reboot
enable_service:
  service.running:
    - name: unattended-upgrades
    - enable: True
    - watch:
      - pkg: upgrade_packages

# Step 4: Install necessary software repos and dependencies
install_postfix_dovecot_deps:
  pkg.installed:
    - pkgs:
      - postfix
      - dovecot
      # Add other required dependencies here

# Step 5: Set the update to run every day
update_daily:
  file.append:
    - name: /etc/apt/apt.conf.d/20auto-upgrades
    - text: 'APT::Periodic::Update-Package-Lists "1";'
    - require:
      - pkg: upgrade_packages

# Step 6: Allow only security and critical updates
security_updates_only:
  file.append:
    - name: /etc/apt/apt.conf.d/50unattended-upgrades
    - text: 'Unattended-Upgrade::Allowed-Origins {
          "${distro_id}:${distro_codename}-security";
          "${distro_id}:${distro_codename}-updates";
        };'
    - require:
      - pkg: upgrade_packages

# Step 7: Blacklist database packages
blacklist_packages:
  file.append:
    - name: /etc/apt/preferences.d/99patch-blacklist
    - text: 'Package: mariadb-server, mariadb-client, nginx, mysql-server, mysql-client
        Pin: release *
        Pin-Priority: -1'
    - require:
      - pkg: upgrade_packages

# Step 8: Set up email notifications
setup_email_notifications:
  cmd.script:
    - source: salt://automatic-updates/files/configure_mail_client.sh
    - require:
      - pkg: upgrade_packages

# Step 9: Send email notifications
send_email_notifications:
  cmd.run:
    - name: echo "Patching is done" | mail -s "Patching Completed" bogovic.ivan7@gmail.com
    - require:
      - pkg: upgrade_packages

# Step 10: Do not restart the server after applying security patches
disable_reboot:
  file.append:
    - name: /etc/apt/apt.conf.d/99no-reboot
    - text: 'APT::Periodic::Unattended-Upgrade "0";'
    - require:
      - pkg: upgrade_packages

# Step 11: Configure mail client
# configure_mail_client:
  # Assuming the script has already been run in the previous step, no additional action is needed.
