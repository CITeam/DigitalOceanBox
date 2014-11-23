#!/bin/bash

# apt-get update;
# apt-get install php-pear htop git unzip -y;

# pear channel-discover pear.drush.org
# pear install drush/drush
# drush version

# pear upgrade drush/drush

cat /vagrant/known_hosts >> ~/.ssh/known_hosts

VAGRANT_CORE_FOLDER="/vagrant"

VAGRANT_SSH_USERNAME=$(echo "root")

VAGRANT_SSH_FOLDER="/root/.ssh";

echo "Adding generated key to ${VAGRANT_SSH_FOLDER}/authorized_keys"

AUTH_KEY=`grep root@blackhole "${VAGRANT_SSH_FOLDER}/authorized_keys"`
if [[ -z $AUTH_KEY ]]
then
cat "${VAGRANT_CORE_FOLDER}/ssh/id_rsa.pub" >> "${VAGRANT_SSH_FOLDER}/authorized_keys"
chmod 600 "${VAGRANT_SSH_FOLDER}/authorized_keys"
fi

cat "${VAGRANT_CORE_FOLDER}/known_hosts" > "${VAGRANT_SSH_FOLDER}/known_hosts"

cp "${VAGRANT_CORE_FOLDER}/ssh/id_rsa" "${VAGRANT_SSH_FOLDER}/id_rsa"
chmod 600 "${VAGRANT_SSH_FOLDER}/id_rsa"
cp "${VAGRANT_CORE_FOLDER}/ssh/id_rsa.pub" "${VAGRANT_SSH_FOLDER}/id_rsa.pub"
chmod 600 "${VAGRANT_SSH_FOLDER}/id_rsa.pub"
