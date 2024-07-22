#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit image-info.json
# Change image name
yq -i '.image-name = "azurite"' /usr/share/ublue-os/image-info.json
# Change vendor
yq -i '.image-vendor = "asen23"' /usr/share/ublue-os/image-info.json
# Change image ref
yq -i '.image-ref = "ostree-image-signed:docker://ghcr.io/asen23/azurite"' /usr/share/ublue-os/image-info.json
