# asterisk

Formulas to set up and configure the Asterisk VoIP server.

See the full [Salt Formulas installation and usage instructions](http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html).

## Available states

* asterisk
Installs the asterisk main packages and deploys given config files. 

* asterisk.prompt
Installs prompt packages for given languages.

* asterisk.voicemail
Install voicemail packages.
  
## Example

Put asterisk config files to _/srv/salt/files/asterisk/_ or any other asterisk directory under file_roots and list them in pillar. See _asterisk/pillar.example_.
