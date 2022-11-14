{% if 'minion' in grains['localhost'] %}}
minion_info:
  grains_present:
    - name: node_info
    - value:
      - provider: Ubuntu
{% endif %}}