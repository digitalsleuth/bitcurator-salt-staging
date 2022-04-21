{% set user = salt['pillar.get']('bitcurator_user', 'bcadmin') %}
{% if user == "root" %}
  {% set home = "/root" %}
{% else %}
  {% set home = "/home/" + user %}
{% endif %}

include:
  - bitcurator.config.user

{{ home }}/Desktop:
  file.recurse:
    - source: salt://bitcurator/env/desktop-folders
    - user: {{ user }}
    - group: {{ user }}
    - makedirs: True
    - file_mode: keep
    - require:
      - user: bitcurator-user-{{ user }}
