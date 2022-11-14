pkg_deps:
  pkg.installed:
    - pkgs:
      - python-setuptools
      - python-pip

upgrade_pip:
  pip.installed:
    - pkgs:
      - pip
    - upgrade: True

supervisor_packages:
  pip.installed:
    - pkgs:
      - supervisor
      - pip
      - Distribute
    - force_reinstall: True
    - upgrade: True
    - require:
      - pip: upgrade_pip

upgrade_setuptools:
  pip.installed:
    - pkgs:
      - setuptools
    - upgrade: True
    - force_reinstall: True