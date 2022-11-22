{% set script_res = salt['cmd.script']('salt://test/test.sh') %}

create-stdout-file:
  file.managed:
    - name: /tmp/script-stdout.txt
    - contents: {{ script_res.stdout }}