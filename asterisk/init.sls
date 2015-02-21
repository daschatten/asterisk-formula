# This is the main state file for configuring asterisk,
# it deploys config files given in pillar.

{% from "asterisk/map.jinja" import map with context %}

# Install main asterisk package
asterisk_packages:
  pkg.installed:
    - pkgs:
      - {{ map.pkg_asterisk }}

# Deploy config files given in pillar
{% for file in salt['pillar.get']('asterisk:config_files', {}) %}
/etc/asterisk/{{ file }}:
  file.managed:
    - source: salt://asterisk/{{ file }}
    - watch_in:
      - service {{ map.service }}
{% endfor %}
