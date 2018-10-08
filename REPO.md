# Repo Installer
Quick guide to create APT and Yum repositories.

## APT
- apt-get install gnupg1 gpgv1
- Generate key: gpg1 --gen-key
- Install Aptly (https://www.aptly.info/download/)
- aptly repo create -distribution="tangledit" tangledit
- aptly repo add tangledit package.deb
- aptly publish repo tangledit filesystem:tangledit:tangledit

## Yum
