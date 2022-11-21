vim installed:
  pkg.installed:
    - name: {{ pillar['editor'] }}

drvo installed:
  pkg.installed:
    - name: {{ pillar['drvo'] }}