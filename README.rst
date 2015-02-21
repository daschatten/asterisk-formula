========
asterisk
========

Formulas to set up and configure the Asterisk VoIP server.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``asterisk``
------------

Installs the asterisk main packages and deploys given config files. 

``asterisk.prompt``
-------------------

Installs prompt packages for given languages.

``asterisk.voicemail``
----------------------

Install voicemail packages.
  
Example
=======

Put asterisk config files to */srv/salt/files/asterisk/* or any other *asterisk* directory under file_roots and list them in pillar. See *asterisk/pillar.example*.
