{% from "asterisk/map.jinja" import map with context %}

include:
  - asterisk

asterisk_voicemail_packages:
  pkg.installed:
    - pkgs:
      - {{ map.pkg_voicemail }}
