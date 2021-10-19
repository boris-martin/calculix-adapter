#!/usr/bin/bash

# Compress the changelog, strip the binaries
cp changelog.Debian calculix-precice_2.17-1_amd64/usr/share/doc/calculix-precice/changelog.Debian
gzip -9 calculix-precice_2.17-1_amd64/usr/share/doc/calculix-precice/changelog.Debian -f
strip --strip-unneeded calculix-precice_2.17-1_amd64/usr/bin/ccx_preCICE

dpkg-deb --build --root-owner-group calculix-precice_2.17-1_amd64
lintian *.deb

