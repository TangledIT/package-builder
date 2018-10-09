# Repo Installer
Quick guide to create APT and Yum repositories with GPG signing

## Setup key
- apt-get install gnupg2
- gpg --full-generate-key
- gpg --list-keys
- gpg --keyserver keyserver.ubuntu.com --send-keys #key#
- gpg --armor --export #key# > repo@tangled.it.gpg.key

## Support GPG1 (For Aptly only)
- apt install gpgv1 gnupg1
- cd ~/.gnupg
- gpg --output gpg2_exported_pub.gpg --armor --export xxxxxxxxxxxxxxxxx
- gpg --output gpg2_exported_sec.gpg --armor --export-secret-key xxxxxxxxxxxxxxxxx
- gpg1 --import gpg2_exported_pub.gpg
- gpg1 --import --allow-secret-key-import gpg2_exported_sec.gpg

## APT
- Install Aptly (https://www.aptly.info/download/)
- apt-get install aptly
- aptly repo create -distribution="tangledit" tangledit
- aptly repo add tangledit package.deb
- configure ~/.aptly.conf
- aptly publish repo tangledit filesystem:tangledit:tangledit

## Yum
- apt-get install createrepo
- mkdir /repos
- createrepo /repos
- move rpm packages in /repos
- sign packages with:
- rpm -addsign package.rpm
- createrepo --update /repos
