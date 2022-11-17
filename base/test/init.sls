{% for d in pillar.get('script_run', {}).items() %}
script_run:
  cmd.script:
    - name: {{ pillar['exec'] }}

{% endfor %}