#!/bin/bash

# Migrate a repository to WHEEZY

# DON'T COMMIT ANYTHING AFTER launching this
# reset your subversion repos back to the serverside one!

cd `dirname $0` 

pushd ../debian 
patch <../jessie/control.diff
patch <../jessie/changelog.diff
popd

cp vhost.conf ../etc/alternc/templates/apache2/
cp bureau.conf ../etc/alternc/templates/alternc/
cp alternc.install ../install/
cp apache2.conf ../etc/alternc/templates/alternc/
cp ssl.conf ../ssl/
cp roundcube.config.inc.php ../roundcube/templates/roundcube/config.inc.php
rm ../roundcube/templates/roundcube/main.inc.php
cp roundcube.password.config.inc.php ../roundcube/templates/roundcube/plugins/password/config.inc.php
cp roundcube-install ./roundcube/