include:
  - bitcurator.packages.python3

matplotlib:
  pip.installed:
    - bin_env: /usr/bin/python3
    - upgrade: True
    - require:
      - sls: bitcurator.packages.python3
