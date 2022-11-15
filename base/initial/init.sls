/root/info.txt:
  file.managed:
    - source: salt://initial/info.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0600