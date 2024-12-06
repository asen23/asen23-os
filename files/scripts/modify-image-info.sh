#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Edit image-info.json
cat /usr/share/ublue-os/image-info.json | \
# Change image name \
jq '."image-name" = "azurite"' | \
# Change vendor \
jq '."image-vendor" = "asen23"' | \
# Change image ref \
jq '."image-ref" = "ostree-image-signed:docker://ghcr.io/asen23/azurite"' > /usr/share/ublue-os/image-info.json

