{% set user = salt['pillar.get']('bitcurator_user', 'bcadmin') %}
{% if user == "root" %}
  {% set home = "/root" %}
{% else %}
  {% set home = "/home/" + user %}
{% endif %}
{% set all_users = salt['user.list_users']() %}
{% if user in all_users %}
bitcurator-user-{{ user }}:
  user.present:
    - name: {{ user }}
    - home: {{ home }}
{% else %}
bitcurator-user-{{ user }}:
  group.present:
    - name: {{ user }}
  user.present:
    - name: {{ user }}
    - gid: {{ user }}
    - fullname: BitCurator
    - shell: /bin/bash
    - home: {{ home }}
    - password: bcadmin
#    - usergroup: True
{% endif %}
