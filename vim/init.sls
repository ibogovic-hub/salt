{% set this_state = "vim" %}

{{ this_state }} - install:
    pkg.installed:
    - pkgs:
        - vim

{{ this_state }} - config file:
  file.managed:
    - name: ~/.vimrc
    - source: salt://vim/files/vimrc.j2
    - require:
      - pkg: {{ this_state }} - install