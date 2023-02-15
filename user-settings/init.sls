~/.bashrc: 
  file.managed: 
    - user: root 
    - group: root 
    - mode: 0644 
    - source: salt://user-settings/files/user-setting-template.jinja2
    - template: jinja

call-bashrc: 
  module.run:
    - cmd.run:
      - . ~/.bashrc