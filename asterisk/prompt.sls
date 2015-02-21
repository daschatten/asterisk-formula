{% from "asterisk/map.jinja" import map with context %}

include:
  - asterisk

{% if salt['pillar.get']('asterisk:prompt', None) %}
asterisk_prompt_packages:
  pkg.installed:
    - pkgs:
  {% for lang in salt['pillar.get']('asterisk:prompt', {}) %}
      - {{ map.pkg_prompt }}{{lang}}
  {% endfor %}
{% endif %}
