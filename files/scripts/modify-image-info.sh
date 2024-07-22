#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit image-info.json
# Change bazzite to azurite
sed -i 's/bazzite/azurite/' /usr/share/ublue-os/image-info.json
# Change vendor to asen23
sed -i 's/ublue-os/asen23/' /usr/share/ublue-os/image-info.json
